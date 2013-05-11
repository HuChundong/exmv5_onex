.class Lcom/htc/opensense2/widget/ActivityMainBase$1;
.super Landroid/os/Handler;
.source "ActivityMainBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/widget/ActivityMainBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/widget/ActivityMainBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/widget/ActivityMainBase;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/opensense2/widget/ActivityMainBase$1;->this$0:Lcom/htc/opensense2/widget/ActivityMainBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase$1;->this$0:Lcom/htc/opensense2/widget/ActivityMainBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onMessage(Landroid/os/Message;)Z

    .line 345
    return-void
.end method
