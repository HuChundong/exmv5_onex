.class Lcom/android/camera/component/MainBar$15;
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
        "Lcom/android/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/MainBar$15;->this$0:Lcom/android/camera/component/MainBar;

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
            "Lcom/android/camera/RecordingState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v1, Lcom/android/camera/component/MainBar$25;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/MainBar$15;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->updateButtonStates()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$1500(Lcom/android/camera/component/MainBar;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/MainBar$15;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->updateFlashIcon()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$1200(Lcom/android/camera/component/MainBar;)V

    #calls: Lcom/android/camera/component/MainBar;->updateIsoIcon()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$updateIsoIcon(Lcom/android/camera/component/MainBar;)V

    #calls: Lcom/android/camera/component/MainBar;->updateWbIcon()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$updateWbIcon(Lcom/android/camera/component/MainBar;)V

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/MainBar$15;->this$0:Lcom/android/camera/component/MainBar;

    iget-object v1, p0, Lcom/android/camera/component/MainBar$15;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/MainBar;->access$700(Lcom/android/camera/component/MainBar;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/component/MainBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/component/MainBar$15;->this$0:Lcom/android/camera/component/MainBar;

    iget-object v1, p0, Lcom/android/camera/component/MainBar$15;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/MainBar;->access$700(Lcom/android/camera/component/MainBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/camera/component/MainBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/component/MainBar$15;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->updateFlashIcon()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$1200(Lcom/android/camera/component/MainBar;)V

    #calls: Lcom/android/camera/component/MainBar;->updateIsoIcon()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$updateIsoIcon(Lcom/android/camera/component/MainBar;)V

    #calls: Lcom/android/camera/component/MainBar;->updateWbIcon()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$updateWbIcon(Lcom/android/camera/component/MainBar;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
