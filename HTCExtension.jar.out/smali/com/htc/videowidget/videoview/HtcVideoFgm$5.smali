.class Lcom/htc/videowidget/videoview/HtcVideoFgm$5;
.super Ljava/lang/Object;
.source "HtcVideoFgm.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/HtcVideoFgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$5;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHelper(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "helperType"
    .parameter "b"

    .prologue
    .line 1495
    const-string v0, "HtcVideoFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHelper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm$5;->this$0:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    #calls: Lcom/htc/videowidget/videoview/HtcVideoFgm;->getHelperString(I)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->access$1100(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    packed-switch p1, :pswitch_data_0

    .line 1504
    :pswitch_0
    return-void

    .line 1496
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onNetworkChange(Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 1508
    return-void
.end method
