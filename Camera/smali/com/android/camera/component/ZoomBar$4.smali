.class Lcom/android/camera/component/ZoomBar$4;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ZoomBar$4;->this$0:Lcom/android/camera/component/ZoomBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$4;->this$0:Lcom/android/camera/component/ZoomBar;

    #calls: Lcom/android/camera/component/ZoomBar;->hideZoomBar()V
    invoke-static {v0}, Lcom/android/camera/component/ZoomBar;->access$500(Lcom/android/camera/component/ZoomBar;)V

    return-void
.end method
