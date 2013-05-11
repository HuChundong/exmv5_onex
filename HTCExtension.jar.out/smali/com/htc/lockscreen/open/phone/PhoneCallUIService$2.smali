.class Lcom/htc/lockscreen/open/phone/PhoneCallUIService$2;
.super Landroid/os/Handler;
.source "PhoneCallUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/open/phone/PhoneCallUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/open/phone/PhoneCallUIService;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/open/phone/PhoneCallUIService;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$2;->this$0:Lcom/htc/lockscreen/open/phone/PhoneCallUIService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget v2, p1, Landroid/os/Message;->what:I

    .line 62
    .local v2, what:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 63
    .local v1, callId:I
    const-string v0, "unknow"

    .line 64
    .local v0, action:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 78
    :goto_0
    iget-object v3, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$2;->this$0:Lcom/htc/lockscreen/open/phone/PhoneCallUIService;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/lockscreen/open/phone/PhoneCallUIService;->performAction(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 79
    return-void

    .line 66
    :pswitch_0
    const-string v0, "answer_call"

    .line 67
    goto :goto_0

    .line 69
    :pswitch_1
    const-string v0, "reject_call"

    .line 70
    goto :goto_0

    .line 72
    :pswitch_2
    const-string v0, "silent_call"

    .line 73
    goto :goto_0

    .line 75
    :pswitch_3
    const-string v0, "sendmsg_reject_call"

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
