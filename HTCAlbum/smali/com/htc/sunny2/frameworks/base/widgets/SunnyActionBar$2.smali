.class Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SunnyActionBar.java"


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
    .line 518
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$2;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$2;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    #calls: Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    invoke-static {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->access$200(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
