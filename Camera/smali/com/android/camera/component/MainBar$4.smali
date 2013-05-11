.class Lcom/android/camera/component/MainBar$4;
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

    iput-object p1, p0, Lcom/android/camera/component/MainBar$4;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/MainBar$4;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->showScenePanel()Z
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$500(Lcom/android/camera/component/MainBar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar$4;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$200(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    :cond_0
    return-void
.end method
