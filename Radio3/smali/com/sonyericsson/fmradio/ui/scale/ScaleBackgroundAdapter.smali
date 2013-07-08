.class public Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScaleBackgroundAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackgroundResources:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "backgroundResources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;",
            ">;",
            "Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, backgroundModel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 46
    iput-object p3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->mBackgroundResources:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;

    .line 47
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    new-instance p2, Landroid/view/View;

    .end local p2
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    .restart local p2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    .line 57
    .local v0, item:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    iget v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;->pegType:I

    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 72
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 73
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;->width:I

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 74
    .restart local v1       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    :goto_1
    return-object p2

    .line 59
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->mBackgroundResources:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->getSmallPegDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->mBackgroundResources:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->getMediumPegDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 76
    .restart local v1       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
