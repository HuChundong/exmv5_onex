.class Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeadSetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$200(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;

    move-result-object v5

    if-nez v5, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const-string v5, "HeadSetHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HeadSetReceiver : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 314
    const-string v5, "state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 315
    .local v4, state:I
    if-nez v4, :cond_3

    .line 316
    invoke-static {v10}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$302(I)I

    .line 326
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$200(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;->headsetStateChange()V

    goto :goto_0

    .line 317
    :cond_3
    if-ne v4, v9, :cond_4

    .line 319
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$300()I

    move-result v3

    .line 320
    .local v3, preState:I
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$302(I)I

    .line 321
    if-ne v3, v10, :cond_2

    .line 322
    invoke-static {v8}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$402(I)I

    goto :goto_1

    .line 325
    .end local v3           #preState:I
    :cond_4
    invoke-static {v8}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$302(I)I

    goto :goto_1

    .line 328
    .end local v4           #state:I
    :cond_5
    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 330
    const-string v5, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 331
    .restart local v4       #state:I
    if-ne v4, v10, :cond_8

    .line 333
    const-string v5, "HeadSetHelper"

    const-string v6, "BluetoothA2dp connected"

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$502(I)I

    .line 335
    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->isBtBeatsHeadsetPlugged(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 336
    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    #calls: Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->checkIsBeatsPill()V
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$100(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)V

    .line 339
    :goto_2
    invoke-static {v9}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$402(I)I

    .line 346
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$200(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;

    move-result-object v5

    invoke-interface {v5}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;->headsetStateChange()V

    goto :goto_0

    .line 338
    :cond_7
    invoke-static {v8}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$602(Z)Z

    goto :goto_2

    .line 341
    :cond_8
    if-nez v4, :cond_6

    .line 343
    const-string v5, "HeadSetHelper"

    const-string v6, "BluetoothA2dp disconnected"

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {v10}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$502(I)I

    goto :goto_3

    .line 348
    .end local v4           #state:I
    :cond_9
    const-string v5, "android.media.GLOBAL_BEATSEFFECT_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    const-string v5, "android.media.EXTRA_BEATSEFFECT_STATUS"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 351
    .local v1, beatsState:Z
    const-string v5, "android.media.EXTRA_CALLER_NAME"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, caller:Ljava/lang/String;
    const-string v5, "HeadSetHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change beats state, the beatsState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", caller = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v5, "HtcBeatsNotify"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    #getter for: Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;
    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$200(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;

    move-result-object v5

    invoke-interface {v5, v2, v1}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;->beatsStateChange(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
