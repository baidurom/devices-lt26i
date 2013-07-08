.class public Lcom/sonyericsson/fmradio/ui/FavoriteUtils;
.super Ljava/lang/Object;
.source "FavoriteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;,
        Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;
    }
.end annotation


# static fields
.field private static final KEY_FREQUENCIES:Ljava/lang/String; = "fs"

.field private static final KEY_NAMES:Ljava/lang/String; = "ns"

.field private static VIEW_TYPE_NORMAL:I

.field private static VIEW_TYPE_SPECIAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->VIEW_TYPE_SPECIAL:I

    .line 39
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->VIEW_TYPE_NORMAL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->VIEW_TYPE_SPECIAL:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->VIEW_TYPE_NORMAL:I

    return v0
.end method

.method public static createAddFavoriteView(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;I)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "ff"
    .parameter "currentFrequency"

    .prologue
    .line 205
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 207
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 208
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 209
    .local v0, addText:Landroid/widget/TextView;
    const v3, 0x7f08000e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-object v2
.end method

.method public static createFavoritesAdapter(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;Ljava/util/Map;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/widget/ArrayAdapter;
    .locals 8
    .parameter "context"
    .parameter "ff"
    .parameter
    .parameter "specialView"
    .parameter "editListener"
    .parameter "favListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/fmradio/util/FrequencyFormatter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, favorites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    new-instance v0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;

    const v2, 0x7f030002

    const v3, 0x1020014

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->toFavItemList(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static getFavorites(Landroid/os/Bundle;)Ljava/util/SortedMap;
    .locals 7
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const-string v4, "fs"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 190
    .local v1, fs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v4, "ns"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 192
    .local v3, ns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 193
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "length mismatch when deserializing favorites"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 196
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 197
    .local v0, favorites:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 198
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v4}, Lcom/sonyericsson/fmradio/station/Favorite;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_1
    return-object v0
.end method

.method public static toBundle(Ljava/util/SortedMap;)Landroid/os/Bundle;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, favorites:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    .local v2, fs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v4, ns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/station/Favorite;

    .line 181
    .local v1, f:Lcom/sonyericsson/fmradio/station/Favorite;
    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v1           #f:Lcom/sonyericsson/fmradio/station/Favorite;
    :cond_0
    const-string v5, "fs"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 184
    const-string v5, "ns"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 185
    return-object v0
.end method

.method public static toFavItemList(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .parameter "ff"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/fmradio/util/FrequencyFormatter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, favorites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    new-instance v4, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-direct {v4, p0, p1, v5, v3}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILcom/sonyericsson/fmradio/station/Favorite;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_0
    return-object v2
.end method
