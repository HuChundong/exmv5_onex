.class Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$4;
.super Ljava/lang/Object;
.source "SunnyActionBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->initGestureDetector(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$4;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$4;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->onActionBarTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
