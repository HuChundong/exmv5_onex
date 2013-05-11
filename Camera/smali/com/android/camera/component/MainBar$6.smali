.class Lcom/android/camera/component/MainBar$6;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/MainBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/MainBar$6;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/MainBar$6;->this$0:Lcom/android/camera/component/MainBar;

    invoke-virtual {v0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->flashButtonClickedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/component/MainBar$6;->this$0:Lcom/android/camera/component/MainBar;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar$6;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->switchFlashMode()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$600(Lcom/android/camera/component/MainBar;)V

    return-void
.end method
