.class Lcom/android/camera/component/AutoFocusController$5;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

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

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

    #calls: Lcom/android/camera/component/AutoFocusController;->cancelAllAutoFocus()V
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$200(Lcom/android/camera/component/AutoFocusController;)V

    return-void
.end method
