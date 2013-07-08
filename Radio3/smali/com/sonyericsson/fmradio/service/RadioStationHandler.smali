.class public Lcom/sonyericsson/fmradio/service/RadioStationHandler;
.super Ljava/lang/Object;
.source "RadioStationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/service/RadioStationHandler$Predicate;,
        Lcom/sonyericsson/fmradio/service/RadioStationHandler$FrequencyFilter;
    }
.end annotation


# static fields
.field private static final sWorker:Ljava/util/concurrent/Executor;


# instance fields
.field private mFavorites:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation
.end field

.field private mStations:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;"
        }
    .end annotation
.end field

.field private mStore:Lcom/sonyericsson/fmradio/station/RadioStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/sonyericsson/fmradio/service/RadioStationHandler$4;

    invoke-direct {v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler$4;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->sWorker:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/fmradio/station/RadioStore;)V
    .locals 1
    .parameter "store"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    .line 53
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/service/RadioStationHandler;)Lcom/sonyericsson/fmradio/station/RadioStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    return-object v0
.end method

.method private getFavName(I)Ljava/lang/String;
    .locals 3
    .parameter "frequency"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/station/Favorite;

    .line 169
    .local v0, favorite:Lcom/sonyericsson/fmradio/station/Favorite;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getPsn(I)Ljava/lang/String;
    .locals 3
    .parameter "frequency"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/station/RadioStation;

    .line 174
    .local v0, station:Lcom/sonyericsson/fmradio/station/RadioStation;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/RadioStation;->getProgramServiceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static removeIf(Ljava/util/Collection;Lcom/sonyericsson/fmradio/service/RadioStationHandler$Predicate;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/sonyericsson/fmradio/service/RadioStationHandler$Predicate",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, p:Lcom/sonyericsson/fmradio/service/RadioStationHandler$Predicate;,"Lcom/sonyericsson/fmradio/service/RadioStationHandler$Predicate<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 205
    .local v1, in:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 209
    .end local v1           #in:Ljava/lang/Object;,"TT;"
    :cond_1
    return-void
.end method


# virtual methods
.method public addFavorite(ILjava/lang/String;)V
    .locals 3
    .parameter "frequency"
    .parameter "name"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-direct {v2, p2}, Lcom/sonyericsson/fmradio/station/Favorite;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public addStation(I)Z
    .locals 3
    .parameter "frequency"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/fmradio/station/RadioStation;

    invoke-direct {v2}, Lcom/sonyericsson/fmradio/station/RadioStation;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canNavigateFavorites(I)Z
    .locals 3
    .parameter "startFreq"

    .prologue
    const/4 v0, 0x1

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearStations()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    .line 75
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 281
    sget-object v0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->sWorker:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sonyericsson/fmradio/service/RadioStationHandler$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler$5;-><init>(Lcom/sonyericsson/fmradio/service/RadioStationHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method public findClosestStation(I)Ljava/lang/Integer;
    .locals 2
    .parameter "frequency"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/fmradio/service/RadioStationHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler$1;-><init>(Lcom/sonyericsson/fmradio/service/RadioStationHandler;I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "frequency"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getPsn(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, psn:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->getFavName(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #psn:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getFavorites()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public getNextFavorite(I)Ljava/lang/Integer;
    .locals 4
    .parameter "startFreq"

    .prologue
    .line 122
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 123
    .local v0, candidate:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 124
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 125
    .local v1, lower:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 127
    .end local v1           #lower:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 125
    .restart local v1       #lower:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v0, v2

    goto :goto_0
.end method

.method public getPreviousFavorite(I)Ljava/lang/Integer;
    .locals 5
    .parameter "startFreq"

    .prologue
    .line 139
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 140
    .local v0, candidate:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 141
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    .line 142
    .local v1, higher:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 144
    .end local v1           #higher:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 142
    .restart local v1       #higher:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v0, v2

    goto :goto_0
.end method

.method public getStations()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public isFavorite(I)Z
    .locals 2
    .parameter "frequency"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Lcom/sonyericsson/fmradio/service/RadioStationHandler$FrequencyFilter;)V
    .locals 8
    .parameter "filter"

    .prologue
    .line 244
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    invoke-interface {v5}, Lcom/sonyericsson/fmradio/station/RadioStore;->readStations()Ljava/util/Map;

    move-result-object v4

    .line 245
    .local v4, stations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    invoke-interface {v5}, Lcom/sonyericsson/fmradio/station/RadioStore;->readFavorites()Ljava/util/Map;

    move-result-object v2

    .line 247
    .local v2, favorites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-interface {v5}, Ljava/util/NavigableMap;->clear()V

    .line 248
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 249
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/sonyericsson/fmradio/service/RadioStationHandler$FrequencyFilter;->isValid(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-interface {v5}, Ljava/util/NavigableMap;->clear()V

    .line 255
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/sonyericsson/fmradio/service/RadioStationHandler$FrequencyFilter;->isValid(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    iget-object v5, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 260
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_3
    return-void
.end method

.method public loadFrequency()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    invoke-interface {v0}, Lcom/sonyericsson/fmradio/station/RadioStore;->loadFrequency()I

    move-result v0

    return v0
.end method

.method public removeFavorite(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public removeStation(I)Z
    .locals 2
    .parameter "frequency"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeStationRange(II)V
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/fmradio/service/RadioStationHandler$2;-><init>(Lcom/sonyericsson/fmradio/service/RadioStationHandler;II)V

    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->removeIf(Ljava/util/Collection;Lcom/sonyericsson/fmradio/service/RadioStationHandler$Predicate;)V

    .line 226
    return-void
.end method

.method public save()V
    .locals 4

    .prologue
    .line 267
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 269
    .local v1, stationSnapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mFavorites:Ljava/util/NavigableMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 271
    .local v0, favoriteSnapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    sget-object v2, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->sWorker:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/sonyericsson/fmradio/service/RadioStationHandler$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/sonyericsson/fmradio/service/RadioStationHandler$3;-><init>(Lcom/sonyericsson/fmradio/service/RadioStationHandler;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public saveFrequency(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStore:Lcom/sonyericsson/fmradio/station/RadioStore;

    invoke-interface {v0, p1}, Lcom/sonyericsson/fmradio/station/RadioStore;->saveFrequency(I)V

    .line 234
    return-void
.end method

.method public updateRdsData(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "frequency"
    .parameter "rdsData"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "PSN"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, programServiceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/RadioStationHandler;->mStations:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/fmradio/station/RadioStation;

    invoke-direct {v3, v0}, Lcom/sonyericsson/fmradio/station/RadioStation;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v0           #programServiceName:Ljava/lang/String;
    :cond_0
    return-void
.end method
