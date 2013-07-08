.class public Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;
.super Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;
.source "Mp3AudioMediaWrapper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIdMusic:I

.field private mIdNoise:I

.field private mReceiver:Lcom/sonyericsson/fmradio/mock/MockReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/fmradio/mock/MockReceiver;II)V
    .locals 0
    .parameter "context"
    .parameter "receiver"
    .parameter "idMusic"
    .parameter "idNoise"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mReceiver:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mContext:Landroid/content/Context;

    .line 45
    iput p3, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mIdMusic:I

    .line 46
    iput p4, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mIdNoise:I

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    return v0
.end method

.method public createMediaPlayer()Landroid/media/MediaPlayer;
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mReceiver:Lcom/sonyericsson/fmradio/mock/MockReceiver;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mIdMusic:I

    iget v3, p0, Lcom/sonyericsson/fmradio/service/Mp3AudioMediaWrapper;->mIdNoise:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/fmradio/mock/MockReceiver;->getMockMediaPlayer(Landroid/content/Context;II)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setSpeakerMediaOn(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sonyericsson/fmradio/service/AndroidAudioMediaWrapper;->setSpeakerMediaOn(Z)V

    return-void
.end method
