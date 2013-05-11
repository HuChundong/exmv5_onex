.class Lcom/android/camera/component/ZoomBar$8;
.super Lcom/android/camera/trigger/Trigger;
.source "ZoomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ZoomBar$8;->this$0:Lcom/android/camera/component/ZoomBar;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$8;->this$0:Lcom/android/camera/component/ZoomBar;

    #getter for: Lcom/android/camera/component/ZoomBar;->m_ZoomInButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBar;->access$700(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$8;->this$0:Lcom/android/camera/component/ZoomBar;

    #getter for: Lcom/android/camera/component/ZoomBar;->m_ZoomOutButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBar;->access$800(Lcom/android/camera/component/ZoomBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
