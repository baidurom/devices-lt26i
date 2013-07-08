.class Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;
.super Ljava/lang/Object;
.source "AndroidAudioMediaWrapper.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/service/AudioMediaWrapper;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 38
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v1, 0x1

    .line 49
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 50
    .local v0, result:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    return-object v0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v1, 0x1

    .line 42
    iget-object v2, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 44
    .local v0, result:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSpeakerMediaOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerMediaOn(Z)V

    .line 61
    return-void
.end method
