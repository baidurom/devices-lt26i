.class public Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
.super Landroid/app/Activity;
.source "FmRadioActivity.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/fmradio/ui/FmRadioActivity$19;,
        Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;,
        Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;
    }
.end annotation


# static fields
.field private static final DLG_FAVORITES_MAX_NAME_LENGTH:I = 0x8

.field protected static final DLG_ID_FAVORITES:I = 0x0

.field protected static final DLG_ID_FAVORITE_DETAILS:I = 0x1

.field protected static final DLG_PARAM_CURRENT_FREQUENCY:Ljava/lang/String; = "current-frequency"

.field protected static final DLG_PARAM_EDIT_MODE:Ljava/lang/String; = "edit-mode"

.field protected static final DLG_PARAM_FAVORITES:Ljava/lang/String; = "favorites"

.field protected static final DLG_PARAM_FAV_ITEM:Ljava/lang/String; = "fav-item"

.field protected static final DLG_PARAM_FORMATTER:Ljava/lang/String; = "formatter"

.field private static final TAG:Ljava/lang/String; = "FMRadioActivity"

.field private static sInjectedTuner:Lcom/sonyericsson/fmradio/service/Tuner;


# instance fields
.field private mFavoriteIndicator:Landroid/widget/ImageView;

.field private mFavoritesButton:Landroid/widget/ImageButton;

.field protected mFbAvailable:Z

.field private mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

.field private mFrequencyIndicator:Landroid/widget/TextView;

.field private mFrequencyMHzIndicator:Landroid/widget/TextView;

.field private mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

.field private mNextFavoriteButton:Landroid/widget/ImageButton;

.field private mNextStationButton:Landroid/widget/ImageButton;

.field private mOutputIndicator:Landroid/widget/ImageView;

.field private mPhfMissingDialog:Landroid/app/AlertDialog;

.field private mPowerOffLayer:Landroid/view/View;

.field private mPrevFavoriteButton:Landroid/widget/ImageButton;

.field private mPrevStationButton:Landroid/widget/ImageButton;

.field private mRdsInfo:Landroid/widget/TextView;

.field mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

.field private mScaleControllerListener:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

.field private mScanAllProgressDialog:Landroid/app/ProgressDialog;

.field private mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

.field private mStartupProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;

.field private mStereoIndicator:Landroid/widget/TextView;

.field private mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

.field private mUiIsOn:Z

.field private mUserInitiatedStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    .line 940
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/service/Tuner;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->initTuner(Lcom/sonyericsson/fmradio/service/Tuner;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateRdsInfo(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateFavoriteButtons(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;)Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    return-object p1
.end method

.method private cancelLikeAvailableCheck()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->cancel()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .line 268
    :cond_0
    return-void
.end method

.method private connectToFmService()V
    .locals 3

    .prologue
    .line 373
    sget-object v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->sInjectedTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-nez v1, :cond_0

    .line 374
    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/sonyericsson/fmradio/service/FmService;->setFeedbackProvider(Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;)V

    .line 376
    invoke-static {p0}, Lcom/sonyericsson/fmradio/ui/MockUtil;->setupFmService(Landroid/content/Context;)V

    .line 378
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v0, i:Landroid/content/Intent;
    const-string v1, "user-initiated-start"

    iget-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUserInitiatedStart:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 380
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUserInitiatedStart:Z

    .line 382
    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    invoke-direct {v1, p0, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    .line 383
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;->bind(Landroid/content/Intent;I)Z

    .line 388
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 386
    :cond_0
    sget-object v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->sInjectedTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-direct {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->initTuner(Lcom/sonyericsson/fmradio/service/Tuner;)V

    goto :goto_0
.end method

.method private createColorizedFrequencyDisplayBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020012

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, background:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 195
    .local v2, colorizedBackground:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 196
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 197
    .local v3, paint:Landroid/graphics/Paint;
    invoke-static {p0}, Lcom/sonyericsson/fmradio/util/ThemeUtils;->getAccentColorFilter(Landroid/content/Context;)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 198
    invoke-virtual {v1, v0, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    return-object v2
.end method

.method private createFavoriteDetailsDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "args"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    .line 848
    const-string v9, "fav-item"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    .line 849
    .local v5, fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    const-string v9, "edit-mode"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 851
    .local v3, editMode:Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v9, 0x7f090003

    invoke-direct {v0, p0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 852
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFormatter()Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFrequency()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 853
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const/high16 v10, 0x7f03

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 854
    .local v2, content:Landroid/view/View;
    const v9, 0x7f0b0001

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 855
    .local v4, editText:Landroid/widget/EditText;
    const/high16 v9, 0x7f0b

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 857
    .local v1, charsLeftIndicator:Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFavorite()Lcom/sonyericsson/fmradio/station/Favorite;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v7

    .line 860
    .local v7, name:Ljava/lang/String;
    new-array v6, v12, [Landroid/text/InputFilter;

    .line 861
    .local v6, filter:[Landroid/text/InputFilter;
    const/4 v9, 0x0

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v6, v9

    .line 862
    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 864
    if-eqz v7, :cond_0

    .line 865
    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 866
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    rsub-int/lit8 v9, v9, 0x8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    :goto_0
    new-instance v9, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$13;

    invoke-direct {v9, p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$13;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/widget/TextView;)V

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 889
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 890
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 891
    const v9, 0x7f080012

    new-instance v10, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$14;

    invoke-direct {v10, p0, v4, v5}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$14;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/widget/EditText;Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 901
    const v9, 0x7f080013

    new-instance v10, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$15;

    invoke-direct {v10, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$15;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 907
    const v9, 0x7f080011

    new-instance v10, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$16;

    invoke-direct {v10, p0, v5}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$16;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 917
    new-instance v9, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$17;

    invoke-direct {v9, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$17;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 924
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 927
    .local v8, result:Landroid/app/AlertDialog;
    new-instance v9, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$18;

    invoke-direct {v9, p0, v8, v3}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$18;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/app/AlertDialog;Z)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 934
    return-object v8

    .line 869
    .end local v8           #result:Landroid/app/AlertDialog;
    :cond_0
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createFavoriteListDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 16
    .parameter "args"

    .prologue
    .line 772
    const-string v1, "current-frequency"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 773
    .local v10, currentFrequency:I
    const-string v1, "favorites"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 774
    .local v14, favBundle:Landroid/os/Bundle;
    invoke-static {v14}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->getFavorites(Landroid/os/Bundle;)Ljava/util/SortedMap;

    move-result-object v3

    .line 775
    .local v3, favorites:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    const-string v1, "formatter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 777
    .local v2, formatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    new-instance v5, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;

    invoke-direct {v5}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;-><init>()V

    .line 778
    .local v5, editListener:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;
    new-instance v6, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;

    invoke-direct {v6}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;-><init>()V

    .line 780
    .local v6, favListener:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;
    move-object/from16 v0, p0

    invoke-static {v0, v2, v10}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->createAddFavoriteView(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->createFavoritesAdapter(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;Ljava/util/Map;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/widget/ArrayAdapter;

    move-result-object v9

    .line 784
    .local v9, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v1, v4}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 788
    :cond_0
    new-instance v13, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 789
    .local v13, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08000d

    invoke-virtual {v13, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 790
    const/4 v1, 0x0

    invoke-virtual {v13, v9, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 791
    const v1, 0x7f080013

    new-instance v4, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$9;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v13, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 797
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 801
    .local v12, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v12}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v15

    .line 803
    .local v15, listView:Landroid/widget/ListView;
    new-instance v7, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;

    move-object/from16 v8, p0

    move-object v11, v2

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$10;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/widget/ArrayAdapter;ILcom/sonyericsson/fmradio/util/FrequencyFormatter;Landroid/app/AlertDialog;)V

    invoke-virtual {v15, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 816
    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v12}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$11;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;->setDelegate(Landroid/view/View$OnClickListener;)V

    .line 827
    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v12}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$12;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$DelegatingClickListener;->setDelegate(Landroid/view/View$OnClickListener;)V

    .line 840
    return-object v12
.end method

.method private dismissPhfMissingDialog()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPhfMissingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPhfMissingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPhfMissingDialog:Landroid/app/AlertDialog;

    .line 649
    :cond_0
    return-void
.end method

.method private dismissScanAllProgressDialog()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScanAllProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScanAllProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScanAllProgressDialog:Landroid/app/ProgressDialog;

    .line 625
    :cond_0
    return-void
.end method

.method private dismissStartupProgressDialog()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStartupProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStartupProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;->dismiss()V

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStartupProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;

    .line 606
    :cond_0
    return-void
.end method

.method private initTuner(Lcom/sonyericsson/fmradio/service/Tuner;)V
    .locals 2
    .parameter "tuner"

    .prologue
    const/4 v1, 0x0

    .line 403
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/fmradio/service/Tuner;->addObserver(Ljava/util/Observer;)V

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/fmradio/service/Tuner;->addSignalQualityListener(Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;)V

    .line 407
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onTunerAvailable()V

    .line 409
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method private onTunerAvailable()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 416
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/Tuner;->getFmBand()Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v0

    .line 418
    .local v0, fmBand:Lcom/stericsson/hardware/fm/FmBand;
    new-instance v2, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-direct {v2, v0}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;-><init>(Lcom/stericsson/hardware/fm/FmBand;)V

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 420
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyIndicator:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sonyericsson/fmradio/util/FontUtils;->getLightFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 421
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->getNumberOfDecimals()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 426
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyMHzIndicator:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    :goto_0
    const v2, 0x7f0b0011

    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 433
    .local v1, scaleView:Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->getFrequency()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;-><init>(Landroid/widget/RelativeLayout;Lcom/stericsson/hardware/fm/FmBand;ILcom/sonyericsson/fmradio/util/FrequencyFormatter;)V

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .line 437
    new-instance v2, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;

    invoke-direct {v2, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$6;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleControllerListener:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    .line 447
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleControllerListener:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->addScaleControllerListener(Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;)V

    .line 448
    return-void

    .line 428
    .end local v1           #scaleView:Landroid/widget/RelativeLayout;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyMHzIndicator:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyMHzIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private onTunerUnavailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleControllerListener:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->removeScaleControllerListener(Lcom/sonyericsson/fmradio/ui/scale/ScaleController$ScaleControllerListener;)V

    .line 457
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->onDestroy()V

    .line 458
    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/fmradio/service/Tuner;->deleteObserver(Ljava/util/Observer;)V

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/fmradio/service/Tuner;->removeSignalQualityListener(Lcom/sonyericsson/fmradio/service/Tuner$SignalQualityListener;)V

    .line 464
    iput-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyMHzIndicator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyIndicator:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRdsInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoriteIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    return-void
.end method

.method private registerForMediaButtonEvents()V
    .locals 3

    .prologue
    .line 366
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 368
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sonyericsson/fmradio/ui/MediaButtonReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .local v1, mediaButtonResponder:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 370
    return-void
.end method

.method private setButtonListeners()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$1;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevStationButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextStationButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$3;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevFavoriteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$4;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextFavoriteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$5;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    return-void
.end method

.method public static setTuner(Lcom/sonyericsson/fmradio/service/Tuner;)V
    .locals 0
    .parameter "tuner"

    .prologue
    .line 979
    sput-object p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->sInjectedTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    .line 980
    return-void
.end method

.method private setUiOff()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 540
    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPowerOffLayer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevStationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextStationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevFavoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextFavoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoriteIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRdsInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStereoIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyMHzIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyMHzIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->invalidateOptionsMenu()V

    .line 565
    return-void
.end method

.method private setUiOn()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 568
    iput-boolean v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    .line 570
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPowerOffLayer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevStationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 573
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextStationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 574
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevFavoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 575
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextFavoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 579
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoriteIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRdsInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStereoIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateOutputIndicator()V

    .line 585
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyMHzIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyMHzIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->invalidateOptionsMenu()V

    .line 593
    return-void
.end method

.method private showPhfMissingDialog()V
    .locals 3

    .prologue
    .line 628
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPhfMissingDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 629
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 630
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 631
    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 632
    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$7;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 638
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPhfMissingDialog:Landroid/app/AlertDialog;

    .line 639
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPhfMissingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 640
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPhfMissingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 642
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private showScanAllProgressDialog()V
    .locals 3

    .prologue
    .line 609
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScanAllProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 610
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, scanInProgressString:Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    const v2, 0x7f090002

    invoke-direct {v1, p0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScanAllProgressDialog:Landroid/app/ProgressDialog;

    .line 613
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScanAllProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScanAllProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 615
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScanAllProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 616
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScanAllProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 618
    .end local v0           #scanInProgressString:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showStartupProgressDialog()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStartupProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;

    if-nez v0, :cond_0

    .line 597
    #calls: Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;->show(Landroid/app/Activity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;
    invoke-static {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;->access$600(Landroid/app/Activity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStartupProgressDialog:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupProgressDialog;

    .line 599
    :cond_0
    return-void
.end method

.method private updateFavoriteButtons(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 532
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/Tuner;->canNavigateFavorites()Z

    move-result v0

    .line 533
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextFavoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 534
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextFavoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 535
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevFavoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 536
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevFavoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 537
    return-void
.end method

.method private updateOutputIndicator()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/service/Tuner;->isSpeakerAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateRdsInfo(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoriteIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/fmradio/service/Tuner;->isFavorite(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRdsInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/fmradio/service/Tuner;->getDisplayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateStereoIndicatorText(Z)V
    .locals 2
    .parameter "stereo"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStereoIndicator:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const-string v0, "STEREO"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void

    .line 206
    :cond_0
    const-string v0, "MONO"

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setContentView(I)V

    .line 156
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPowerOffLayer:Landroid/view/View;

    .line 157
    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyIndicator:Landroid/widget/TextView;

    .line 158
    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyMHzIndicator:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f0b000a

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mStereoIndicator:Landroid/widget/TextView;

    .line 160
    const v1, 0x7f0b000d

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mRdsInfo:Landroid/widget/TextView;

    .line 161
    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoriteIndicator:Landroid/widget/ImageView;

    .line 162
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoriteIndicator:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    const v1, 0x7f0b000b

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mOutputIndicator:Landroid/widget/ImageView;

    .line 164
    const v1, 0x7f0b0017

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevStationButton:Landroid/widget/ImageButton;

    .line 165
    const v1, 0x7f0b0018

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextStationButton:Landroid/widget/ImageButton;

    .line 166
    const v1, 0x7f0b001a

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mPrevFavoriteButton:Landroid/widget/ImageButton;

    .line 167
    const v1, 0x7f0b001c

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mNextFavoriteButton:Landroid/widget/ImageButton;

    .line 168
    const v1, 0x7f0b001b

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFavoritesButton:Landroid/widget/ImageButton;

    .line 171
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->createColorizedFrequencyDisplayBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, freqDisplayBackground:Landroid/graphics/Bitmap;
    const v1, 0x7f0b0009

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setButtonListeners()V

    .line 177
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setVolumeControlStream(I)V

    .line 179
    if-nez p1, :cond_0

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUserInitiatedStart:Z

    .line 182
    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 758
    packed-switch p1, :pswitch_data_0

    .line 766
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 768
    .local v0, result:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 760
    .end local v0           #result:Landroid/app/Dialog;
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->createFavoriteListDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 761
    .restart local v0       #result:Landroid/app/Dialog;
    goto :goto_0

    .line 763
    .end local v0           #result:Landroid/app/Dialog;
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->createFavoriteDetailsDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 764
    .restart local v0       #result:Landroid/app/Dialog;
    goto :goto_0

    .line 758
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 709
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 710
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 287
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissStartupProgressDialog()V

    .line 288
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissScanAllProgressDialog()V

    .line 289
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissPhfMissingDialog()V

    .line 290
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 715
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 750
    :goto_0
    return v0

    .line 717
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/Tuner;->searchForStations()V

    goto :goto_0

    .line 720
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/fmradio/service/Tuner;->setForcedMonoPlayback(Z)V

    goto :goto_0

    .line 723
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/fmradio/service/Tuner;->setForcedMonoPlayback(Z)V

    goto :goto_0

    .line 727
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/Tuner;->toggleSpeakerAudio()V

    .line 728
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateOutputIndicator()V

    goto :goto_0

    .line 731
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/Tuner;->togglePower()V

    goto :goto_0

    .line 734
    :pswitch_5
    invoke-static {p0}, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->launchTrackId(Landroid/content/Context;)V

    goto :goto_0

    .line 737
    :pswitch_6
    invoke-static {p0}, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->launchLike(Landroid/content/Context;)V

    goto :goto_0

    .line 715
    :pswitch_data_0
    .packed-switch 0x7f0b0025
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->cancelLikeAvailableCheck()V

    .line 253
    return-void
.end method

.method public onPlayingInStereo(Z)V
    .locals 0
    .parameter "inStereo"

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateStereoIndicatorText(Z)V

    .line 970
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const v9, 0x7f0b0029

    const v8, 0x7f0b0027

    const/4 v5, 0x0

    const v7, 0x7f0b0026

    const/4 v4, 0x1

    .line 653
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-eqz v3, :cond_1

    .line 661
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->isForcedMonoPlayback()Z

    move-result v1

    .line 662
    .local v1, isMono:Z
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->isSpeakerAudio()Z

    move-result v2

    .line 663
    .local v2, isSpeaker:Z
    const v3, 0x7f0b002b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_2

    move v3, v4

    :goto_0
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 664
    const v3, 0x7f0b002b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 665
    const v3, 0x7f0b002c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 666
    const v3, 0x7f0b002c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 667
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v2, :cond_0

    move v5, v4

    :cond_0
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 668
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 669
    const v3, 0x7f0b002a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 670
    const v3, 0x7f0b002a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 671
    const v3, 0x7f0b0028

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 672
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {p0}, Lcom/sonyericsson/fmradio/util/TrackIdUtil;->trackIdAvailable(Landroid/content/Context;)Z

    move-result v5

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 673
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 674
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFbAvailable:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 675
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mUiIsOn:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 677
    .end local v1           #isMono:Z
    .end local v2           #isSpeaker:Z
    :cond_1
    const v3, 0x7f0b0025

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 679
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 680
    .local v0, fbLike:Landroid/view/MenuItem;
    new-instance v3, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    new-instance v5, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;

    invoke-direct {v5, p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$8;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/view/MenuItem;)V

    invoke-direct {v3, p0, v5}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;-><init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/LikeAvailableChecker$LikeListener;)V

    iput-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    .line 697
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mLikeAvailableChecker:Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/util/LikeAvailableChecker;->start()V

    .line 703
    return v4

    .end local v0           #fbLike:Landroid/view/MenuItem;
    .restart local v1       #isMono:Z
    .restart local v2       #isSpeaker:Z
    :cond_2
    move v3, v5

    .line 663
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 233
    invoke-virtual {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->invalidateOptionsMenu()V

    .line 234
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 7
    .parameter "signalStrength"

    .prologue
    const/4 v6, -0x1

    const-wide/high16 v4, 0x3ff8

    const/4 v3, 0x0

    .line 963
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyIndicator:Landroid/widget/TextView;

    int-to-double v1, p1

    mul-double/2addr v1, v4

    double-to-float v1, v1

    invoke-virtual {v0, v1, v3, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 964
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyMHzIndicator:Landroid/widget/TextView;

    int-to-double v1, p1

    mul-double/2addr v1, v4

    double-to-float v1, v1

    invoke-virtual {v0, v1, v3, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 965
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 223
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setUiOff()V

    .line 224
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showStartupProgressDialog()V

    .line 226
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->connectToFmService()V

    .line 227
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 274
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onTunerUnavailable()V

    .line 276
    sget-object v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->sInjectedTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;->unbind()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mServiceConnection:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;

    .line 281
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 239
    if-eqz p1, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->registerForMediaButtonEvents()V

    .line 247
    :cond_0
    return-void
.end method

.method protected showFavoriteDetailsDialog(Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;Z)V
    .locals 3
    .parameter "fi"
    .parameter "editMode"

    .prologue
    const/4 v2, 0x1

    .line 353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 354
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "fav-item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 355
    const-string v1, "edit-mode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->removeDialog(I)V

    .line 358
    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 359
    return-void
.end method

.method protected showFavoriteListDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    if-eqz v1, :cond_0

    .line 342
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "current-frequency"

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/Tuner;->getFrequency()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string v1, "favorites"

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/Tuner;->getFavorites()Ljava/util/SortedMap;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->toBundle(Ljava/util/SortedMap;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 345
    const-string v1, "formatter"

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 347
    invoke-virtual {p0, v3}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->removeDialog(I)V

    .line 348
    invoke-virtual {p0, v3, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 350
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .parameter "observable"
    .parameter "unused"

    .prologue
    .line 475
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/Tuner;->getState()Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    move-result-object v1

    .line 479
    .local v1, state:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;
    sget-object v2, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$19;->$SwitchMap$com$sonyericsson$fmradio$service$Tuner$TunerState:[I

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 511
    :goto_0
    sget-object v2, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    if-eq v1, v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/Tuner;->getFrequency()I

    move-result v0

    .line 514
    .local v0, frequency:I
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    sget-object v3, Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;->CLOSEST:Lcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;

    invoke-virtual {v2, v0, v3}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->moveScaleToFrequency(ILcom/sonyericsson/fmradio/ui/scale/ScaleController$AnimationType;)V

    .line 515
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mScaleController:Lcom/sonyericsson/fmradio/ui/scale/ScaleController;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->getStations()Ljava/util/SortedMap;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v4}, Lcom/sonyericsson/fmradio/service/Tuner;->getFavorites()Ljava/util/SortedMap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/fmradio/ui/scale/ScaleController;->updateStationsAndFavorites(Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    .line 518
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyIndicator:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateRdsInfo(I)V

    .line 520
    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->updateFavoriteButtons(I)V

    .line 523
    .end local v0           #frequency:I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/service/Tuner;->isPhfMissing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showPhfMissingDialog()V

    .line 528
    :goto_1
    return-void

    .line 482
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setUiOff()V

    .line 483
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissStartupProgressDialog()V

    .line 484
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissScanAllProgressDialog()V

    goto :goto_0

    .line 488
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setUiOn()V

    .line 489
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissStartupProgressDialog()V

    .line 490
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissScanAllProgressDialog()V

    goto :goto_0

    .line 494
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setUiOn()V

    .line 495
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissStartupProgressDialog()V

    .line 496
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showScanAllProgressDialog()V

    .line 497
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->onSignalStrengthChanged(I)V

    goto :goto_0

    .line 501
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setUiOff()V

    .line 502
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showStartupProgressDialog()V

    .line 503
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissScanAllProgressDialog()V

    goto :goto_0

    .line 506
    :pswitch_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Received update from destroyed Tuner"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->dismissPhfMissingDialog()V

    goto :goto_1

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
