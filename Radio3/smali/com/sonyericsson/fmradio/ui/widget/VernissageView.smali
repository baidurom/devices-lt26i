.class public Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
.super Landroid/widget/AdapterView;
.source "VernissageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;,
        Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;,
        Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG_FPS:Z = false

.field private static final ID_DYNAMICS_UPDATE:I = 0x0

.field private static final LAYOUT_MODE_AFTER:I = 0x0

.field private static final LAYOUT_MODE_BEFORE:I = 0x1

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field private static final POSITION_TOLERANCE:F = 0.5f

.field private static final TOUCH_STATE_CLICK:I = 0x1

.field private static final TOUCH_STATE_RESTING:I = 0x0

.field private static final TOUCH_STATE_SCROLL:I = 0x2

.field private static final VELOCITY_TOLERANCE:F = 0.5f


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private final mCachedItemViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugAverageFps:I

.field private mDebugFpsPaint:Landroid/graphics/Paint;

.field private mDebugTimeOfLastDraw:J

.field private mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

.field private mFirstItemListOffset:I

.field private mFirstItemPosition:I

.field private mFirstItemStartOffset:I

.field private mHandler:Landroid/os/Handler;

.field private mLastItemPosition:I

.field private mListPosition:I

.field private mMinimumFlingVelocity:I

.field private mMovementSource:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

.field private mOnLayoutChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;

.field private mOnPositionChangedListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVertical:Z

.field private mWrap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    iput v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    .line 156
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mCachedItemViews:Ljava/util/LinkedList;

    .line 159
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnPositionChangedListeners:Ljava/util/LinkedList;

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mWrap:Z

    .line 168
    iput-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    .line 184
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 185
    .local v0, viewConfig:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMinimumFlingVelocity:I

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)Lcom/sonyericsson/fmradio/ui/widget/Dynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemStartOffset:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemStartOffset:I

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;Landroid/view/View;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemListOffset:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->scrollList(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 9
    .parameter "child"
    .parameter "layoutMode"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v8, -0x2

    const/high16 v7, 0x4000

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 597
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 598
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 600
    .restart local v2       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-ne p2, v6, :cond_1

    move v1, v4

    .line 601
    .local v1, index:I
    :goto_0
    invoke-virtual {p1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 602
    invoke-virtual {p0, p1, v1, v2, v6}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 604
    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    if-eqz v6, :cond_4

    .line 606
    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v8, :cond_2

    .line 607
    const/4 v0, 0x0

    .line 614
    .local v0, heightMeasureSpec:I
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getWidth()I

    move-result v5

    or-int/2addr v5, v7

    invoke-virtual {p1, v5, v0}, Landroid/view/View;->measure(II)V

    .line 630
    .end local v0           #heightMeasureSpec:I
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 631
    return-void

    .end local v1           #index:I
    :cond_1
    move v1, v5

    .line 600
    goto :goto_0

    .line 608
    .restart local v1       #index:I
    :cond_2
    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_3

    .line 609
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getHeight()I

    move-result v5

    or-int v0, v7, v5

    .restart local v0       #heightMeasureSpec:I
    goto :goto_1

    .line 611
    .end local v0           #heightMeasureSpec:I
    :cond_3
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    or-int v0, v7, v5

    .restart local v0       #heightMeasureSpec:I
    goto :goto_1

    .line 617
    .end local v0           #heightMeasureSpec:I
    :cond_4
    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v6, v8, :cond_5

    .line 618
    const/4 v3, 0x0

    .line 625
    .local v3, widthMeasureSpec:I
    :goto_3
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getHeight()I

    move-result v5

    or-int/2addr v5, v7

    invoke-virtual {p1, v3, v5}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 619
    .end local v3           #widthMeasureSpec:I
    :cond_5
    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v6, v5, :cond_6

    .line 620
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getWidth()I

    move-result v5

    or-int v3, v7, v5

    .restart local v3       #widthMeasureSpec:I
    goto :goto_3

    .line 622
    .end local v3           #widthMeasureSpec:I
    :cond_6
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    or-int v3, v7, v5

    .restart local v3       #widthMeasureSpec:I
    goto :goto_3
.end method

.method private endTouch(F)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/4 v4, 0x0

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 373
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMinimumFlingVelocity:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 374
    const/4 p1, 0x0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    int-to-float v1, v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setState(FFJ)V

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 387
    :cond_2
    iput v4, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    .line 388
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->notifyOnPositionChangedListeners()V

    .line 389
    return-void
.end method

.method private fillList(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildStop(Landroid/view/View;)I

    move-result v1

    .line 545
    .local v1, lastEdge:I
    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->fillListAfter(II)V

    .line 547
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildStart(Landroid/view/View;)I

    move-result v0

    .line 548
    .local v0, firstEdge:I
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->fillListBefore(II)V

    .line 549
    return-void
.end method

.method private fillListAfter(II)V
    .locals 4
    .parameter "lastEdge"
    .parameter "offset"

    .prologue
    .line 559
    :goto_0
    add-int v2, p1, p2

    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getHeight()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mWrap:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mLastItemPosition:I

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 560
    :cond_0
    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mLastItemPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/fmradio/ui/widget/WidgetUtils;->wrapPosition(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mLastItemPosition:I

    .line 562
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Landroid/widget/Adapter;

    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mLastItemPosition:I

    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getCachedView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 563
    .local v0, newLastChild:Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 564
    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildExtent(Landroid/view/View;)I

    move-result v1

    add-int/2addr p1, v1

    .line 565
    goto :goto_0

    .line 559
    .end local v0           #newLastChild:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getWidth()I

    move-result v1

    goto :goto_1

    .line 566
    :cond_2
    return-void
.end method

.method private fillListBefore(II)V
    .locals 5
    .parameter "firstEdge"
    .parameter "offset"

    .prologue
    .line 576
    :goto_0
    add-int v2, p1, p2

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mWrap:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemPosition:I

    if-lez v2, :cond_1

    .line 577
    :cond_0
    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemPosition:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sonyericsson/fmradio/ui/widget/WidgetUtils;->wrapPosition(II)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemPosition:I

    .line 579
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Landroid/widget/Adapter;

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemPosition:I

    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getCachedView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v2, v3, v4, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 580
    .local v1, newFirstChild:Landroid/view/View;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 581
    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildExtent(Landroid/view/View;)I

    move-result v0

    .line 582
    .local v0, childExtent:I
    sub-int/2addr p1, v0

    .line 585
    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemListOffset:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemListOffset:I

    goto :goto_0

    .line 587
    .end local v0           #childExtent:I
    .end local v1           #newFirstChild:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getCachedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 663
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getChildExtent(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getChildStart(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method private getChildStop(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method private notifyOnPositionChangedListeners()V
    .locals 3

    .prologue
    .line 456
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnPositionChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    .line 457
    .local v1, onPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMovementSource:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    invoke-interface {v1, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;->onPositionChanged(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;)V

    goto :goto_0

    .line 459
    .end local v1           #onPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;
    :cond_0
    return-void
.end method

.method private positionItems()V
    .locals 9

    .prologue
    .line 637
    iget v7, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    iget v8, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemListOffset:I

    add-int v6, v7, v8

    .line 639
    .local v6, start:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 640
    invoke-virtual {p0, v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 642
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 643
    .local v2, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 644
    .local v1, childHeight:I
    iget-boolean v7, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    div-int/lit8 v4, v7, 0x2

    .line 645
    .local v4, newChildLeft:I
    :goto_1
    iget-boolean v7, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    if-eqz v7, :cond_1

    move v5, v6

    .line 647
    .local v5, newChildTop:I
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 648
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v0, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 650
    iget-boolean v7, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    if-eqz v7, :cond_2

    .end local v1           #childHeight:I
    :goto_3
    add-int/2addr v6, v1

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #newChildLeft:I
    .end local v5           #newChildTop:I
    .restart local v1       #childHeight:I
    :cond_0
    move v4, v6

    .line 644
    goto :goto_1

    .line 645
    .restart local v4       #newChildLeft:I
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v1

    div-int/lit8 v5, v7, 0x2

    goto :goto_2

    .restart local v5       #newChildTop:I
    :cond_2
    move v1, v2

    .line 650
    goto :goto_3

    .line 652
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeight:I
    .end local v2           #childWidth:I
    .end local v4           #newChildLeft:I
    .end local v5           #newChildTop:I
    :cond_3
    return-void
.end method

.method private removeNonVisibleViews(I)V
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 487
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildCount()I

    move-result v0

    .line 490
    .local v0, childCount:I
    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mLastItemPosition:I

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    if-le v0, v5, :cond_1

    .line 492
    invoke-virtual {p0, v6}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 493
    .local v1, firstChild:Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildStop(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p1

    if-gez v3, :cond_1

    .line 495
    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->removeViewInLayout(Landroid/view/View;)V

    .line 496
    add-int/lit8 v0, v0, -0x1

    .line 497
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 498
    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemPosition:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sonyericsson/fmradio/ui/widget/WidgetUtils;->wrapPosition(II)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemPosition:I

    .line 502
    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemListOffset:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildExtent(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemListOffset:I

    .line 506
    if-le v0, v5, :cond_0

    .line 507
    invoke-virtual {p0, v6}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 509
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 515
    .end local v1           #firstChild:Landroid/view/View;
    :cond_1
    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemPosition:I

    if-eqz v3, :cond_4

    if-le v0, v5, :cond_4

    .line 517
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 519
    .local v2, lastChild:Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildStart(Landroid/view/View;)I

    move-result v3

    add-int v4, v3, p1

    iget-boolean v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getHeight()I

    move-result v3

    :goto_2
    if-le v4, v3, :cond_4

    .line 521
    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->removeViewInLayout(Landroid/view/View;)V

    .line 522
    add-int/lit8 v0, v0, -0x1

    .line 523
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 524
    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mLastItemPosition:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sonyericsson/fmradio/ui/widget/WidgetUtils;->wrapPosition(II)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mLastItemPosition:I

    .line 529
    if-le v0, v5, :cond_3

    .line 530
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 519
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getWidth()I

    move-result v3

    goto :goto_2

    .line 532
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 536
    .end local v2           #lastChild:Landroid/view/View;
    :cond_4
    return-void
.end method

.method private scrollList(I)V
    .locals 1
    .parameter "scrolledDistance"

    .prologue
    .line 398
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemStartOffset:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setPosition(I)V

    .line 399
    return-void
.end method

.method private startScroll()V
    .locals 2

    .prologue
    .line 465
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMovementSource:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    sget-object v1, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->ANIMATE_TO_POSITION:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    const/high16 v1, -0x3100

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setMinPosition(F)V

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    const/high16 v1, 0x4f00

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setMaxPosition(F)V

    .line 474
    :cond_0
    sget-object v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->TOUCH:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMovementSource:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    .line 475
    return-void
.end method

.method private startTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchStartX:I

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchStartY:I

    .line 349
    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildStart(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemListOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemStartOffset:I

    .line 352
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 357
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    .line 358
    return-void
.end method


# virtual methods
.method public addOnPositionChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;)V
    .locals 1
    .parameter "onPositionChangedListener"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnPositionChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method public animateToPosition(I)V
    .locals 6
    .parameter "newListPosition"

    .prologue
    const/4 v5, 0x0

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setMinPosition(F)V

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setMaxPosition(F)V

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setState(FFJ)V

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 429
    sget-object v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;->ANIMATE_TO_POSITION:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mMovementSource:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$MovementSource;

    .line 431
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 727
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 745
    return-void
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnimatingForTest()Z
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isTouchIdle()Z
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 312
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 314
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnLayoutChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnLayoutChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;

    invoke-interface {v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;->onLayoutChanged()V

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_1

    .line 334
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 324
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mLastItemPosition:I

    .line 325
    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->fillListAfter(II)V

    .line 332
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->positionItems()V

    .line 333
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->invalidate()V

    goto :goto_0

    .line 327
    :cond_2
    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    iget v2, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemListOffset:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildStart(Landroid/view/View;)I

    move-result v2

    sub-int v0, v1, v2

    .line 328
    .local v0, offset:I
    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->removeNonVisibleViews(I)V

    .line 329
    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->fillList(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 269
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 270
    const/4 v1, 0x0

    .line 306
    :goto_0
    return v1

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 303
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->endTouch(F)V

    :cond_1
    :goto_1
    move v1, v2

    .line 306
    goto :goto_0

    .line 275
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->startTouch(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 279
    :pswitch_1
    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    if-ne v1, v2, :cond_2

    .line 280
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->startScroll()V

    .line 282
    :cond_2
    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    if-ne v1, v3, :cond_1

    .line 283
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 286
    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchStartY:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    :goto_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->scrollList(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchStartX:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 292
    :pswitch_2
    const/4 v0, 0x0

    .line 293
    .local v0, velocity:F
    iget v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mTouchState:I

    if-ne v1, v3, :cond_4

    .line 294
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 295
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 296
    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVertical:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 299
    :cond_4
    :goto_3
    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->endTouch(F)V

    goto :goto_1

    .line 296
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_3

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnPositionChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;)V
    .locals 1
    .parameter "onPositionChangedListener"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnPositionChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 449
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x0

    .line 190
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mAdapter:Landroid/widget/Adapter;

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 192
    iput v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    .line 193
    iput v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemListOffset:I

    .line 194
    iput v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mFirstItemPosition:I

    .line 195
    iput v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mLastItemPosition:I

    .line 196
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->removeAllViewsInLayout()V

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->requestLayout()V

    .line 198
    return-void
.end method

.method public setDynamics(Lcom/sonyericsson/fmradio/ui/widget/Dynamics;)V
    .locals 4
    .parameter "dynamics"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->getPosition()F

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->getVelocity()F

    move-result v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/ui/widget/Dynamics;->setState(FFJ)V

    .line 230
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mDynamics:Lcom/sonyericsson/fmradio/ui/widget/Dynamics;

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView$1;-><init>(Lcom/sonyericsson/fmradio/ui/widget/VernissageView;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    .line 256
    :cond_1
    return-void
.end method

.method public setOnLayoutChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;)V
    .locals 0
    .parameter "onLayoutChangedListener"

    .prologue
    .line 715
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mOnLayoutChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;

    .line 716
    return-void
.end method

.method public setPosition(I)V
    .locals 6
    .parameter "newListPosition"

    .prologue
    .line 407
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    if-eq p1, v0, :cond_0

    .line 408
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mListPosition:I

    .line 409
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->notifyOnPositionChangedListeners()V

    .line 411
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->onLayout(ZIIII)V

    .line 413
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopFling()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 723
    return-void
.end method
