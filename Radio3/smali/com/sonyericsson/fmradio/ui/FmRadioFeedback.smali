.class public Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;
.super Ljava/lang/Object;
.source "FmRadioFeedback.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/service/Tuner$FeedbackProvider;


# static fields
.field private static final ID_BG_INFO:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private mLauncherIcon:Landroid/graphics/Bitmap;

.field private mNextStationIntent:Landroid/app/PendingIntent;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPreviousStationIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    .line 59
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mNotificationManager:Landroid/app/NotificationManager;

    .line 62
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02002a

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mLauncherIcon:Landroid/graphics/Bitmap;

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, launch:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 68
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v2, prev:Landroid/content/Intent;
    const-string v3, "rich_notification_action"

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mPreviousStationIntent:Landroid/app/PendingIntent;

    .line 72
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sonyericsson/fmradio/service/FmService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, next:Landroid/content/Intent;
    const-string v3, "rich_notification_action"

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mNextStationIntent:Landroid/app/PendingIntent;

    .line 75
    return-void
.end method

.method private makeDisplayString(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "ff"
    .parameter "frequency"
    .parameter "displayName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    invoke-virtual {p1, p2}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, mhz:Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const v2, 0x7f08001a

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const v2, 0x7f08001b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setUpRichNotificationView(Ljava/lang/CharSequence;Z)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "channelInfo"
    .parameter "isFavorite"

    .prologue
    .line 108
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030008

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 110
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0b0022

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 111
    const v2, 0x7f0b000c

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    const v1, 0x7f0b0023

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mPreviousStationIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 114
    const v1, 0x7f0b0024

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mNextStationIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 116
    return-object v0

    .line 111
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 4
    .parameter "resId"

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 131
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 132
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    return-void
.end method


# virtual methods
.method public favoriteAdded()V
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f080016

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->showToast(I)V

    .line 127
    return-void
.end method

.method public hideBackgroundInfo()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 80
    return-void
.end method

.method public requestAddFavorite()V
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f080015

    invoke-direct {p0, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->showToast(I)V

    .line 122
    return-void
.end method

.method public showBackgroundInfo(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILjava/lang/String;Z)V
    .locals 6
    .parameter "ff"
    .parameter "frequency"
    .parameter "displayName"
    .parameter "isFavorite"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->makeDisplayString(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, contentText:Ljava/lang/CharSequence;
    invoke-direct {p0, v1, p4}, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->setUpRichNotificationView(Ljava/lang/CharSequence;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 88
    .local v2, rv:Landroid/widget/RemoteViews;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 90
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 92
    const v3, 0x7f02002a

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 93
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mLauncherIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 95
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioFeedback;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 96
    return-void
.end method
