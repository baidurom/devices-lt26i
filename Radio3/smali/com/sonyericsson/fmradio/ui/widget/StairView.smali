.class public Lcom/sonyericsson/fmradio/ui/widget/StairView;
.super Landroid/view/ViewGroup;
.source "StairView.java"


# static fields
.field public static final CHILD_DEFAULT_OFFSET:I = -0x80000000

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mStairHeight:I

.field private mTotalScroll:I

.field private mWrap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    .line 64
    return-void
.end method


# virtual methods
.method public addChildView(Landroid/view/View;IIIZ)V
    .locals 11
    .parameter "child"
    .parameter "position"
    .parameter "offset"
    .parameter "stairLevel"
    .parameter "resolveCollisions"

    .prologue
    .line 137
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    const/high16 v7, -0x8000

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    or-int v2, v7, v8

    .line 139
    .local v2, heightMeasureSpec:I
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v2}, Landroid/view/View;->measure(II)V

    .line 141
    const/high16 v7, -0x8000

    if-ne p3, v7, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 p3, v7, 0x2

    .line 151
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v1, childRect:Landroid/graphics/Rect;
    sub-int v7, p2, p3

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mTotalScroll:I

    add-int v0, v7, v8

    .line 153
    .local v0, childLeftNoWrap:I
    neg-int v7, v0

    int-to-float v7, v7

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 154
    .local v5, nbrOfWraps:I
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v0

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 155
    iget v7, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 157
    if-eqz p5, :cond_8

    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 161
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 162
    .local v3, hitRect:Landroid/graphics/Rect;
    const/4 v6, 0x0

    .line 163
    .local v6, noOverlap:Z
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    mul-int/2addr v7, p4

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 164
    :cond_1
    :goto_1
    if-nez v6, :cond_9

    .line 165
    const/4 v6, 0x1

    .line 166
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 167
    iget v7, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 169
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 170
    invoke-virtual {p0, v4}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 171
    invoke-static {v1, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 172
    const/4 v6, 0x0

    .line 173
    goto :goto_1

    .line 137
    .end local v0           #childLeftNoWrap:I
    .end local v1           #childRect:Landroid/graphics/Rect;
    .end local v2           #heightMeasureSpec:I
    .end local v3           #hitRect:Landroid/graphics/Rect;
    .end local v4           #i:I
    .end local v5           #nbrOfWraps:I
    .end local v6           #noOverlap:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 179
    .restart local v0       #childLeftNoWrap:I
    .restart local v1       #childRect:Landroid/graphics/Rect;
    .restart local v2       #heightMeasureSpec:I
    .restart local v3       #hitRect:Landroid/graphics/Rect;
    .restart local v4       #i:I
    .restart local v5       #nbrOfWraps:I
    .restart local v6       #noOverlap:Z
    :cond_3
    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    div-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_5

    .line 180
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    neg-int v7, v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 181
    invoke-static {v1, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 182
    const/4 v6, 0x0

    .line 183
    goto :goto_1

    .line 185
    :cond_4
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 190
    :cond_5
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    div-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_7

    .line 191
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    neg-int v7, v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 192
    invoke-static {v1, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 193
    const/4 v6, 0x0

    .line 194
    goto :goto_1

    .line 196
    :cond_6
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 169
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 201
    .end local v3           #hitRect:Landroid/graphics/Rect;
    .end local v4           #i:I
    .end local v6           #noOverlap:Z
    :cond_8
    const/4 v7, 0x0

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 205
    :cond_9
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 206
    const/4 v7, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 207
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 212
    return-void
.end method

.method public scroll(I)V
    .locals 4
    .parameter "dx"

    .prologue
    .line 95
    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mTotalScroll:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mTotalScroll:I

    .line 98
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 99
    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    .line 103
    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 98
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_0

    .line 105
    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    neg-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 109
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 117
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mTotalScroll:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->scroll(I)V

    .line 118
    return-void
.end method

.method public setStairHeight(I)V
    .locals 0
    .parameter "stairHeight"

    .prologue
    .line 75
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mStairHeight:I

    .line 76
    return-void
.end method

.method public setWrap(I)V
    .locals 0
    .parameter "wrap"

    .prologue
    .line 86
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/widget/StairView;->mWrap:I

    .line 87
    return-void
.end method
