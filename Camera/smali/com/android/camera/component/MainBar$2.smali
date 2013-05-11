.class Lcom/android/camera/component/MainBar$2;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Lcom/android/camera/widget/PopupBubble$OnOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/MainBar;
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

    iput-object p1, p0, Lcom/android/camera/component/MainBar$2;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Lcom/android/camera/widget/PopupBubble;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/MainBar$2;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;
    invoke-static {v1}, Lcom/android/camera/component/MainBar;->access$300(Lcom/android/camera/component/MainBar;)Lcom/android/camera/widget/PopupBubble;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupBubble;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->startIntroAnimation()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/MainBar$2;->this$0:Lcom/android/camera/component/MainBar;

    invoke-virtual {v1}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->notifyPopupBubbleOpened()V

    return-void
.end method
