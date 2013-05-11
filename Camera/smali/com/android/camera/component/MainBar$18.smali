.class Lcom/android/camera/component/MainBar$18;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/MainBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/MainBar$18;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/MainBar$18;->this$0:Lcom/android/camera/component/MainBar;

    invoke-virtual {v0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar$18;->this$0:Lcom/android/camera/component/MainBar;

    iget-object v1, p0, Lcom/android/camera/component/MainBar$18;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/MainBar;->access$700(Lcom/android/camera/component/MainBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/camera/component/MainBar;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/MainBar$18;->this$0:Lcom/android/camera/component/MainBar;

    iget-object v1, p0, Lcom/android/camera/component/MainBar$18;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/MainBar;->access$700(Lcom/android/camera/component/MainBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/component/MainBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
