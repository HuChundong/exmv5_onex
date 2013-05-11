.class Lcom/htc/lockscreen/open/phone/PhoneCallUIService$1;
.super Lcom/htc/lockscreen/idlescreen/remote/RemoteServiceWrapper;
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
    .line 28
    iput-object p1, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$1;->this$0:Lcom/htc/lockscreen/open/phone/PhoneCallUIService;

    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/remote/RemoteServiceWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(ILandroid/os/Bundle;)[Landroid/os/Bundle;
    .locals 1
    .parameter "code"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAction(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "code"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v2, "call_id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, callId:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 52
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 53
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 54
    iget-object v2, p0, Lcom/htc/lockscreen/open/phone/PhoneCallUIService$1;->this$0:Lcom/htc/lockscreen/open/phone/PhoneCallUIService;

    #getter for: Lcom/htc/lockscreen/open/phone/PhoneCallUIService;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/lockscreen/open/phone/PhoneCallUIService;->access$000(Lcom/htc/lockscreen/open/phone/PhoneCallUIService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    return-void
.end method
