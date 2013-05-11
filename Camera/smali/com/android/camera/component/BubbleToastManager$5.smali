.class Lcom/android/camera/component/BubbleToastManager$5;
.super Lcom/android/camera/trigger/Trigger;
.source "BubbleToastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BubbleToastManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BubbleToastManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BubbleToastManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BubbleToastManager$5;->this$0:Lcom/android/camera/component/BubbleToastManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/BubbleToastManager$5;->this$0:Lcom/android/camera/component/BubbleToastManager;

    iget-object v1, p0, Lcom/android/camera/component/BubbleToastManager$5;->this$0:Lcom/android/camera/component/BubbleToastManager;

    #getter for: Lcom/android/camera/component/BubbleToastManager;->m_CurrentHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/component/BubbleToastManager;->access$200(Lcom/android/camera/component/BubbleToastManager;)Lcom/android/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/component/BubbleToastManager;->closeBubbleToast(Lcom/android/camera/Handle;)V

    return-void
.end method
