.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;
.super Lcom/sonyericsson/fmradio/util/SmartServiceConnection;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "ctx"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .line 393
    invoke-direct {p0, p2}, Lcom/sonyericsson/fmradio/util/SmartServiceConnection;-><init>(Landroid/content/Context;)V

    .line 394
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FmServiceConnection;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    check-cast p2, Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/sonyericsson/fmradio/service/FmService$LocalBinder;->getService()Lcom/sonyericsson/fmradio/service/FmService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/service/FmService;->getTuner()Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v1

    #calls: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->initTuner(Lcom/sonyericsson/fmradio/service/Tuner;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$100(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Lcom/sonyericsson/fmradio/service/Tuner;)V

    .line 399
    return-void
.end method
