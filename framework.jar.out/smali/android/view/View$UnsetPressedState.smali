.class final Landroid/view/View$UnsetPressedState;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnsetPressedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 17300
    iput-object p1, p0, Landroid/view/View$UnsetPressedState;->this$0:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17300
    invoke-direct {p0, p1}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17304
    iget-object v0, p0, Landroid/view/View$UnsetPressedState;->this$0:Landroid/view/View;

    #setter for: Landroid/view/View;->mHasPostUnsetPressedState:Z
    invoke-static {v0, v1}, Landroid/view/View;->access$2202(Landroid/view/View;Z)Z

    .line 17306
    iget-object v0, p0, Landroid/view/View$UnsetPressedState;->this$0:Landroid/view/View;

    #getter for: Landroid/view/View;->mHasRunUnsetPressedState:Z
    invoke-static {v0}, Landroid/view/View;->access$2300(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17307
    iget-object v0, p0, Landroid/view/View$UnsetPressedState;->this$0:Landroid/view/View;

    #setter for: Landroid/view/View;->mHasRunUnsetPressedState:Z
    invoke-static {v0, v1}, Landroid/view/View;->access$2302(Landroid/view/View;Z)Z

    .line 17313
    :goto_0
    return-void

    .line 17312
    :cond_0
    iget-object v0, p0, Landroid/view/View$UnsetPressedState;->this$0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
