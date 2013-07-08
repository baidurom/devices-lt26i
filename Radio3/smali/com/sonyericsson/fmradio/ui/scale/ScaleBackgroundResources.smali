.class public Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;
.super Ljava/lang/Object;
.source "ScaleBackgroundResources.java"


# instance fields
.field private mMediumPegDrawable:Landroid/graphics/drawable/Drawable;

.field private mSmallPegDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "resources"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const v0, 0x7f020026

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mMediumPegDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    const v0, 0x7f020027

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mSmallPegDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mSmallPegDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mMediumPegDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All peg drawables must have the same width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawableWidth()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mSmallPegDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMediumPegDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mMediumPegDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSmallPegDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->mSmallPegDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
