.class final Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;
.super Landroid/widget/ArrayAdapter;
.source "FavoriteUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->createFavoritesAdapter(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;Ljava/util/Map;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$editListener:Landroid/view/View$OnClickListener;

.field final synthetic val$favListener:Landroid/view/View$OnClickListener;

.field final synthetic val$specialView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;IILjava/util/List;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    .local p4, x3:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;>;"
    iput-object p5, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->val$specialView:Landroid/view/View;

    iput-object p6, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->val$editListener:Landroid/view/View$OnClickListener;

    iput-object p7, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->val$favListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->access$000()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->access$100()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 66
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->val$specialView:Landroid/view/View;

    .line 78
    :goto_0
    return-object v2

    .line 69
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, result:Landroid/view/View;
    const v3, 0x7f0b0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, edit:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->val$editListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, favorite:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$1;->val$favListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x2

    return v0
.end method
