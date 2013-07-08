.class public Lcom/sonyericsson/fmradio/ui/scale/ScaleController;
.super Ljava/lang/Object;
.source "ScaleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;,
        Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;
    }
.end annotation


# static fields
.field private static final FAVORITE_START_LEVEL:I = 0x1

.field private static final SCROLL_FRICTION:F = 3.0f

.field private static final SPRING_DAMPING_RATIO_MOVE:F = 1.0f

.field private static final SPRING_DAMPING_RATIO_SNAP:F = 0.5f

.field private static final SPRING_STIFFNESS_MOVE:F = 200.0f

.field private static final SPRING_STIFFNESS_SNAP:F = 100.0f

.field private static final STATION_START_LEVEL:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentFavorites:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRadioStations:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;"
        }
    .end annotation
.end field

.field private mExactMin:I

.field private mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

.field private mFmBand:Lcom/stericsson/hardware/fm/FmBand;

.field private mFrequenciesPerPixel:F

.field private mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

.field private mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

.field private mLineViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

.field private mPreviousFrequency:I

.field private mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

.field private mScaleControllerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

.field private mScaleLayout:Landroid/widget/RelativeLayout;

.field private mSelectableFrequencyWidth:I

.field private mTotalScaleWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Lcom/stericsson/hardware/fm/FmBand;ILcom/sonyericsson/fmradio/util/FrequencyFormatter;)V
    .locals 10
    .parameter "scaleLayout"
    .parameter "fmBand"
    .parameter "initialFrequency"
    .parameter "frequencyFormatter"

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    .line 176
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentFavorites:Ljava/util/SortedMap;

    .line 179
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentRadioStations:Ljava/util/SortedMap;

    .line 197
    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 198
    iput-object p4, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 199
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    .line 200
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 202
    .local v5, resources:Landroid/content/res/Resources;
    const/high16 v8, 0x7f06

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    .line 204
    iget v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_0

    .line 207
    iget v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    .line 209
    :cond_0
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v8}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    .line 210
    iget v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    div-int/lit8 v7, v8, 0x2

    .line 211
    .local v7, selectableCenter:I
    int-to-float v8, v7

    iget v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 212
    .local v2, delta:I
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v8}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v8

    sub-int/2addr v8, v2

    iput v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    .line 214
    new-instance v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;

    invoke-direct {v1, v5}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;-><init>(Landroid/content/res/Resources;)V

    .line 215
    .local v1, backgroundResources:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;
    const v8, 0x7f060001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 216
    .local v3, gapWidth:I
    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->getDrawableWidth()I

    move-result v8

    invoke-direct {p0, v8, v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->createBackgroundModel(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 219
    .local v0, backgroundModel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;>;"
    const v8, 0x7f0b0012

    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    .line 221
    new-instance v6, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;

    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8, v0, v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;)V

    .line 223
    .local v6, scaleBackgroundAdapter:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setAdapter(Landroid/widget/Adapter;)V

    .line 226
    new-instance v8, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    invoke-direct {v8}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    .line 227
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    const/high16 v9, 0x4040

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->setFriction(F)V

    .line 228
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setDynamics(Lcom/sonyericsson/fmradio/ui/widget/Dynamics;)V

    .line 230
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v8}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v9}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v9}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v9

    div-int/2addr v8, v9

    add-int/lit8 v4, v8, 0x1

    .line 232
    .local v4, nbrSelectableFrequencies:I
    iget v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v3

    iput v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    .line 235
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleLayout:Landroid/widget/RelativeLayout;

    .line 236
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->setupHorizontalBackgroundLines(Landroid/widget/RelativeLayout;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mLineViews:Ljava/util/List;

    .line 239
    const v8, 0x7f0b0013

    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    .line 241
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-direct {p0, v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->setupFrequencyTextsView(Lcom/sonyericsson/fmradio/ui/widget/StairView;)V

    .line 244
    const v8, 0x7f0b0014

    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    .line 245
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    iget v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setWrap(I)V

    .line 246
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    const v9, 0x7f020028

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setStairHeight(I)V

    .line 249
    new-instance v8, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;

    invoke-direct {v8, p0, p2}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$1;-><init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;Lcom/stericsson/hardware/fm/FmBand;)V

    iput-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mOnPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    .line 288
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mOnPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->addOnPositionChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;)V

    .line 292
    iget-object v8, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    new-instance v9, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$2;

    invoke-direct {v9, p0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$2;-><init>(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)V

    invoke-virtual {v8, v9}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setOnLayoutChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;)V

    .line 299
    sget-object v8, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->NONE:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    invoke-virtual {p0, p3, v8}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->moveScaleToFrequency(ILcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;)V

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/VernissageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/StairView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I

    return v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I

    return p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/fmradio/ui/scale/ScaleController;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    return-object v0
.end method

.method private createBackgroundModel(II)Ljava/util/ArrayList;
    .locals 13
    .parameter "drawableWidth"
    .parameter "gapWidth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v0, backgroundModel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;>;"
    iget v10, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    div-int/lit8 v9, v10, 0x2

    .line 527
    .local v9, selectableCenter:I
    int-to-float v10, v9

    iget v11, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 528
    .local v1, delta:I
    iget-object v10, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v10}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v10

    add-int v2, v10, v1

    .line 530
    .local v2, exactMax:I
    neg-int v10, p1

    div-int/lit8 v7, v10, 0x2

    .line 532
    .local v7, positionOffset:I
    iget v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    .line 533
    .local v3, frequency:I
    rem-int/lit8 v10, v3, 0x64

    if-eqz v10, :cond_0

    .line 535
    rem-int/lit8 v10, v3, 0x64

    rsub-int/lit8 v10, v10, 0x64

    add-int/2addr v3, v10

    .line 538
    :cond_0
    const/4 v8, 0x0

    .line 539
    .local v8, scalePosition:I
    const/4 v4, 0x0

    .line 540
    .local v4, item:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    :goto_0
    if-gt v3, v2, :cond_4

    .line 541
    iget v10, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    sub-int v10, v3, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int v6, v10, v7

    .line 545
    .local v6, position:I
    if-ge v6, v8, :cond_1

    .line 546
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Scale background graphics overlaps"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 550
    :cond_1
    if-le v6, v8, :cond_2

    .line 551
    new-instance v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    .end local v4           #item:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    sub-int v10, v6, v8

    invoke-direct {v4, v12, v10}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;-><init>(II)V

    .line 553
    .restart local v4       #item:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget v10, v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;->width:I

    add-int/2addr v8, v10

    .line 558
    :cond_2
    rem-int/lit16 v10, v3, 0xc8

    if-nez v10, :cond_3

    .line 559
    new-instance v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    .end local v4           #item:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    const/4 v10, 0x1

    invoke-direct {v4, v10, p1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;-><init>(II)V

    .line 565
    .restart local v4       #item:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget v10, v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;->width:I

    add-int/2addr v8, v10

    .line 540
    add-int/lit8 v3, v3, 0x64

    goto :goto_0

    .line 562
    :cond_3
    new-instance v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    .end local v4           #item:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    const/4 v10, 0x0

    invoke-direct {v4, v10, p1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;-><init>(II)V

    .restart local v4       #item:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    goto :goto_1

    .line 570
    .end local v6           #position:I
    :cond_4
    iget-object v10, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v10}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v10

    iget-object v11, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v11}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v11}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v11

    div-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x1

    .line 572
    .local v5, nbrSelectableFrequencies:I
    new-instance v4, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    .end local v4           #item:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    iget v10, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mSelectableFrequencyWidth:I

    mul-int/2addr v10, v5

    add-int/2addr v10, p2

    sub-int/2addr v10, v8

    invoke-direct {v4, v12, v10}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;-><init>(II)V

    .line 574
    .restart local v4       #item:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    return-object v0
.end method

.method private setupFrequencyTextsView(Lcom/sonyericsson/fmradio/ui/widget/StairView;)V
    .locals 9
    .parameter "frequencyTextsView"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 340
    .local v7, layoutInflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->setWrap(I)V

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v0}, Lcom/stericsson/hardware/fm/FmBand;->getMinFrequency()I

    move-result v6

    .line 343
    .local v6, frequency:I
    rem-int/lit16 v0, v6, 0x3e8

    if-eqz v0, :cond_0

    .line 346
    rem-int/lit16 v0, v6, 0x3e8

    rsub-int v0, v0, 0x3e8

    add-int/2addr v6, v0

    .line 349
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v0}, Lcom/stericsson/hardware/fm/FmBand;->getMaxFrequency()I

    move-result v0

    if-gt v6, v0, :cond_1

    .line 350
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    sub-int v0, v6, v0

    int-to-float v0, v0

    iget v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 351
    .local v2, position:I
    const v0, 0x7f030006

    invoke-virtual {v7, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 353
    .local v1, child:Landroid/widget/TextView;
    div-int/lit16 v0, v6, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    const/high16 v0, 0x4000

    const/high16 v3, -0x100

    invoke-virtual {v1, v0, v8, v8, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 355
    const/high16 v3, -0x8000

    move-object v0, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->addChildView(Landroid/view/View;IIIZ)V

    .line 357
    add-int/lit16 v6, v6, 0x3e8

    .line 358
    goto :goto_0

    .line 359
    .end local v1           #child:Landroid/widget/TextView;
    .end local v2           #position:I
    :cond_1
    return-void
.end method

.method private setupHorizontalBackgroundLines(Landroid/widget/RelativeLayout;)Ljava/util/List;
    .locals 12
    .parameter "scaleView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RelativeLayout;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 309
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v5, lineViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 311
    .local v6, resources:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 312
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f020028

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 313
    .local v8, stairHeight:I
    invoke-virtual {p1, v11, v11}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 314
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    .line 315
    .local v7, scaleViewHeight:I
    const v9, 0x7f020025

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 319
    .local v4, linePixelHeight:I
    div-int/lit8 v9, v4, 0x2

    neg-int v0, v9

    .local v0, height:I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 320
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v2, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 322
    .local v2, layoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 323
    const/4 v9, 0x6

    const v10, 0x7f0b0014

    invoke-virtual {v2, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 324
    const v9, 0x7f030007

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 325
    .local v3, line:Landroid/view/View;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {p1, v3, v11, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 319
    add-int/2addr v0, v8

    goto :goto_0

    .line 329
    .end local v2           #layoutparams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #line:Landroid/view/View;
    :cond_0
    return-object v5
.end method


# virtual methods
.method public addScaleControllerListener(Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;)V
    .locals 1
    .parameter "scaleControllerListener"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method

.method getFrequencyForTest()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I

    return v0
.end method

.method public moveScaleToFrequency(ILcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;)V
    .locals 6
    .parameter "frequency"
    .parameter "animationType"

    .prologue
    .line 480
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->isTouchIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 481
    :cond_0
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mPreviousFrequency:I

    .line 509
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v0, v3, v4

    .line 488
    .local v0, modTarget:I
    sget-object v3, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->NONE:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    if-ne p2, v3, :cond_2

    .line 489
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->stopFling()V

    .line 490
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setPosition(I)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->getPosition()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 496
    .local v2, scalesFromTargetToPosition:F
    sget-object v3, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->DOWN:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    if-ne p2, v3, :cond_3

    .line 498
    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v1, v3

    .line 506
    .local v1, multiplier:I
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleDynamics:Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;

    const/high16 v4, 0x4348

    const/high16 v5, 0x3f80

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/fmradio/ui/widget/SpringDynamics;->setSpring(FF)V

    .line 507
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iget v4, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mTotalScaleWidth:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->animateToPosition(I)V

    goto :goto_0

    .line 499
    .end local v1           #multiplier:I
    :cond_3
    sget-object v3, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->UP:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    if-ne p2, v3, :cond_4

    .line 501
    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v3

    float-to-int v1, v3

    .restart local v1       #multiplier:I
    goto :goto_1

    .line 503
    .end local v1           #multiplier:I
    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .restart local v1       #multiplier:I
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mOnPositionChangedListener:Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->removeOnPositionChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnPositionChangedListener;)V

    .line 454
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setOnLayoutChangedListener(Lcom/sonyericsson/fmradio/ui/widget/VernissageView$OnLayoutChangedListener;)V

    .line 455
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleBackgroundView:Lcom/sonyericsson/fmradio/ui/widget/VernissageView;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/fmradio/ui/widget/VernissageView;->setAdapter(Landroid/widget/Adapter;)V

    .line 456
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 457
    iput-object v4, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    .line 459
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->removeAllViews()V

    .line 460
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyTextsView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->removeAllViews()V

    .line 462
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mLineViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 463
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 465
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iput-object v4, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mLineViews:Ljava/util/List;

    .line 466
    return-void
.end method

.method public removeScaleControllerListener(Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;)V
    .locals 1
    .parameter "scaleControllerListener"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mScaleControllerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method

.method public updateStationsAndFavorites(Ljava/util/SortedMap;Ljava/util/SortedMap;)V
    .locals 19
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, newRadioStations:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .local p2, newFavorites:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    if-nez p1, :cond_0

    .line 372
    new-instance p1, Ljava/util/TreeMap;

    .end local p1           #newRadioStations:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/TreeMap;-><init>()V

    .line 374
    .restart local p1       #newRadioStations:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    :cond_0
    if-nez p2, :cond_1

    .line 375
    new-instance p2, Ljava/util/TreeMap;

    .end local p2           #newFavorites:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-direct/range {p2 .. p2}, Ljava/util/TreeMap;-><init>()V

    .line 377
    .restart local p2       #newFavorites:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentFavorites:Ljava/util/SortedMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v13, 0x1

    .line 380
    .local v13, favoritesChanged:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentRadioStations:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v16, 0x1

    .line 383
    .local v16, radioStationsChanged:Z
    :goto_1
    if-nez v13, :cond_5

    if-nez v16, :cond_5

    .line 428
    .end local p1           #newRadioStations:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .end local p2           #newFavorites:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_2
    return-void

    .line 377
    .end local v13           #favoritesChanged:Z
    .end local v16           #radioStationsChanged:Z
    .restart local p1       #newRadioStations:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .restart local p2       #newFavorites:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 380
    .restart local v13       #favoritesChanged:Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    .line 386
    .restart local v16       #radioStationsChanged:Z
    :cond_5
    if-eqz v13, :cond_6

    .end local p2           #newFavorites:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentFavorites:Ljava/util/SortedMap;

    .line 387
    if-eqz v16, :cond_7

    .end local p1           #newRadioStations:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentRadioStations:Ljava/util/SortedMap;

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    .line 391
    .local v15, layoutInflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->removeAllViews()V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f020028

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 397
    .local v17, stationDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentRadioStations:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 398
    .local v9, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 400
    .local v4, position:I
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 401
    .local v3, child:Landroid/widget/ImageView;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    const/high16 v5, -0x8000

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->addChildView(Landroid/view/View;IIIZ)V

    goto :goto_4

    .line 386
    .end local v3           #child:Landroid/widget/ImageView;
    .end local v4           #position:I
    .end local v9           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v17           #stationDrawable:Landroid/graphics/drawable/Drawable;
    .restart local p1       #newRadioStations:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .restart local p2       #newFavorites:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentFavorites:Ljava/util/SortedMap;

    move-object/from16 p2, v0

    goto :goto_2

    .line 387
    .end local p2           #newFavorites:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentRadioStations:Ljava/util/SortedMap;

    move-object/from16 p1, v0

    goto :goto_3

    .line 409
    .end local p1           #newRadioStations:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #layoutInflater:Landroid/view/LayoutInflater;
    .restart local v17       #stationDrawable:Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f020022

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 411
    .local v10, favoriteBar:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/fmradio/util/ThemeUtils;->getAccentColorFilter(Landroid/content/Context;)Landroid/graphics/ColorFilter;

    move-result-object v18

    .line 412
    .local v18, themeBasedColorFilter:Landroid/graphics/ColorFilter;
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 413
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    .line 415
    .local v5, offset:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mCurrentFavorites:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 416
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mExactMin:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequenciesPerPixel:F

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 417
    .restart local v4       #position:I
    const v2, 0x7f030005

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    const/4 v7, 0x0

    invoke-virtual {v15, v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 418
    .local v3, child:Landroid/view/View;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v11

    .line 419
    .local v11, favoriteName:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 420
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v11

    .line 422
    :cond_9
    const v2, 0x7f0b001f

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 423
    .local v12, favoriteText:Landroid/widget/TextView;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->mFavoritesView:Lcom/sonyericsson/fmradio/ui/widget/StairView;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/fmradio/ui/widget/StairView;->addChildView(Landroid/view/View;IIIZ)V

    goto :goto_5
.end method
