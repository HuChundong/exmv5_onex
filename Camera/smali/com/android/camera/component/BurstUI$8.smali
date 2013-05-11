.class Lcom/android/camera/component/BurstUI$8;
.super Ljava/lang/Object;
.source "BurstUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstUI;->setupPropertyChangedCallbacks()V
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
.field final synthetic this$0:Lcom/android/camera/component/BurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstUI$8;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
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

    iget-object v0, p0, Lcom/android/camera/component/BurstUI$8;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/BurstUI;->access$200(Lcom/android/camera/component/BurstUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/camera/component/BurstUI$9;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/UIState;

    invoke-virtual {v0}, Lcom/android/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/BurstUI$8;->this$0:Lcom/android/camera/component/BurstUI;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/component/BurstUI;->showThunbmailBar(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/BurstUI;->access$700(Lcom/android/camera/component/BurstUI;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/BurstUI$8;->this$0:Lcom/android/camera/component/BurstUI;

    iget-object v0, p0, Lcom/android/camera/component/BurstUI$8;->this$0:Lcom/android/camera/component/BurstUI;

    const-class v2, Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/BurstUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    iput-object v0, v1, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    iget-object v0, p0, Lcom/android/camera/component/BurstUI$8;->this$0:Lcom/android/camera/component/BurstUI;

    iget-object v0, v0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setAutoCloseTimeout(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
