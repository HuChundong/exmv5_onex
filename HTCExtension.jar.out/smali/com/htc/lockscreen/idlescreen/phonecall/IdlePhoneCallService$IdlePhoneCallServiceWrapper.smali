.class Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$IdlePhoneCallServiceWrapper;
.super Lcom/htc/lockscreen/idlescreen/remote/RemoteServiceWrapper;
.source "IdlePhoneCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdlePhoneCallServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$IdlePhoneCallServiceWrapper;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/remote/RemoteServiceWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public performAction(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "code"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    const-string v1, "call_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, callId:I
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService$IdlePhoneCallServiceWrapper;->this$0:Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;

    invoke-virtual {v1, p1, v0}, Lcom/htc/lockscreen/idlescreen/phonecall/IdlePhoneCallService;->performPhoneAction(II)V

    .line 103
    return-void
.end method
