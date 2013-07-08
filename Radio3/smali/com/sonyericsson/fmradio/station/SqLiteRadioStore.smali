.class public Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;
.super Ljava/lang/Object;
.source "SqLiteRadioStore.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/station/RadioStore;


# static fields
.field private static final FM_RADIO_PREFS_NAME:Ljava/lang/String; = "com.sonyericsson.fmradio.prefs"

.field private static final SAVED_FREQUENCY:Ljava/lang/String; = "saved_frequency"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mContext:Landroid/content/Context;

    const-string v1, "com.sonyericsson.fmradio.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mPreferences:Landroid/content/SharedPreferences;

    .line 53
    new-instance v0, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    .line 54
    return-void
.end method

.method private getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->close()V

    .line 183
    return-void
.end method

.method public loadFrequency()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 189
    iget-object v1, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "saved_frequency"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 190
    .local v0, savedFreq:I
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 191
    return v0
.end method

.method public readFavorites()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 101
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v2, favorites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 103
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_2

    .line 104
    iget-object v5, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->getFavoritesCursor(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;

    move-result-object v0

    .line 105
    .local v0, cursor:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    if-eqz v0, :cond_1

    .line 109
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getFrequency()I

    move-result v3

    .line 111
    .local v3, frequency:I
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getName()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, name:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-direct {v6, v4}, Lcom/sonyericsson/fmradio/station/Favorite;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    .end local v3           #frequency:I
    .end local v4           #name:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->close()V

    throw v5

    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->close()V

    .line 118
    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 122
    .end local v0           #cursor:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    :goto_1
    return-object v2

    .line 120
    :cond_2
    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "Failed to get database, returning no items"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public readStations()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v4, stations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 77
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_2

    .line 78
    iget-object v5, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->getStationsCursor(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;

    move-result-object v0

    .line 79
    .local v0, cursor:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    if-eqz v0, :cond_1

    .line 83
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getFrequency()I

    move-result v2

    .line 85
    .local v2, frequency:I
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getName()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, name:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/fmradio/station/RadioStation;

    invoke-direct {v6, v3}, Lcom/sonyericsson/fmradio/station/RadioStation;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    .end local v2           #frequency:I
    .end local v3           #name:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->close()V

    throw v5

    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->close()V

    .line 92
    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 96
    .end local v0           #cursor:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    :goto_1
    return-object v4

    .line 94
    :cond_2
    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "Failed to get database, returning no items"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public saveFrequency(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "saved_frequency"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    return-void
.end method

.method public writeFavorites(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, favorites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 153
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 156
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "Failed to get database, write skipped"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 175
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 162
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->removeAllFavorites(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v4, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    const-string v6, "frequency"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v6, "name"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 170
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Landroid/database/SQLException;
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "SQLException when inserting favorite frequency"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 169
    .end local v1           #e:Landroid/database/SQLException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public writeStations(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, radioStations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 127
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 130
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "Failed to get database, write skipped"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 149
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 136
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->removeAllStations(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v4, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 139
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    const-string v6, "frequency"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v6, "name"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/fmradio/station/RadioStation;

    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/station/RadioStation;->getProgramServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v5, "radiostations"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 144
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Landroid/database/SQLException;
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "SQLException when inserting station frequency"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 143
    .end local v1           #e:Landroid/database/SQLException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method
