.class Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$1;
.super Landroid/os/Handler;
.source "SunnyScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$1;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene.1;"
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$1;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 277
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$1;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene.1;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$1;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onMessage(Landroid/os/Message;)Z

    .line 278
    return-void
.end method
