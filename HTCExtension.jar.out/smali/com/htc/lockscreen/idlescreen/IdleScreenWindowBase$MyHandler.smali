.class Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyHandler;
.super Landroid/os/Handler;
.source "IdleScreenWindowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyHandler;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyHandler;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 619
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 625
    :goto_0
    return-void

    .line 621
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyHandler;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShowAnimation:Z

    .line 622
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyHandler;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->updateSurface(ZZZ)V

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
