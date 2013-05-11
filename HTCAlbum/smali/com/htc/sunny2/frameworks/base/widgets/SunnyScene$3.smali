.class Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$3;
.super Ljava/lang/Object;
.source "SunnyScene.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;


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
    .line 735
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$3;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene.3;"
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$3;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 744
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$3;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene.3;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$3;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onActionBarClicked(Landroid/view/View;)V

    .line 745
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 738
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$3;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene.3;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$3;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
