.class public Lcom/sonyericsson/fmradio/mock/MockRadioStore;
.super Ljava/lang/Object;
.source "MockRadioStore.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/station/RadioStore;


# instance fields
.field public mFavorites:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedFrequency:I

.field public mStations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteCount:I

.field public saveFrequencyCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mFavorites:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mStations:Ljava/util/Map;

    .line 37
    iput v1, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mWriteCount:I

    .line 39
    iput v1, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->saveFrequencyCount:I

    .line 41
    iput v1, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mSavedFrequency:I

    return-void
.end method


# virtual methods
.method public addFavorite(ILjava/lang/String;)V
    .locals 3
    .parameter "frequency"
    .parameter "name"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mFavorites:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-direct {v2, p2}, Lcom/sonyericsson/fmradio/station/Favorite;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public addStation(ILjava/lang/String;)V
    .locals 3
    .parameter "frequency"
    .parameter "cachedRds"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mStations:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/fmradio/station/RadioStation;

    invoke-direct {v2, p2}, Lcom/sonyericsson/fmradio/station/RadioStation;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public loadFrequency()I
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mSavedFrequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 117
    iget v0, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mSavedFrequency:I

    return v0
.end method

.method public readFavorites()Ljava/util/Map;
    .locals 1
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
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mFavorites:Ljava/util/Map;

    return-object v0
.end method

.method public readStations()Ljava/util/Map;
    .locals 1
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
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mStations:Ljava/util/Map;

    return-object v0
.end method

.method public saveFrequency(I)V
    .locals 3
    .parameter "f"

    .prologue
    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 110
    iput p1, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mSavedFrequency:I

    .line 111
    iget v0, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->saveFrequencyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->saveFrequencyCount:I

    .line 112
    return-void
.end method

.method public setStartFrequency(I)V
    .locals 0
    .parameter "startFrequency"

    .prologue
    .line 125
    iput p1, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mSavedFrequency:I

    .line 126
    return-void
.end method

.method public waitForWriteCount(II)Z
    .locals 10
    .parameter "count"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x1

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v8, p2

    add-long v3, v6, v8

    .line 91
    .local v3, tEnd:J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    :try_start_1
    iget v6, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mWriteCount:I

    if-ge v6, p1, :cond_1

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 94
    .local v1, tCur:J
    cmp-long v6, v1, v3

    if-ltz v6, :cond_0

    .line 95
    monitor-exit p0

    .line 104
    .end local v1           #tCur:J
    :goto_1
    return v5

    .line 97
    .restart local v1       #tCur:J
    :cond_0
    sub-long v6, v3, v1

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 100
    .end local v1           #tCur:J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 100
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public writeFavorites(Ljava/util/Map;)V
    .locals 0
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
    .line 64
    .local p1, favorites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mFavorites:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public writeStations(Ljava/util/Map;)V
    .locals 1
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
    .line 55
    .local p1, radioStations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    iput-object p1, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mStations:Ljava/util/Map;

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mWriteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/fmradio/mock/MockRadioStore;->mWriteCount:I

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
