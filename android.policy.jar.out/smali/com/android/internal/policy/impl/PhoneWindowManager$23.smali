.class Lcom/android/internal/policy/impl/PhoneWindowManager$23;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$needsMenu:Z

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5970
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->val$visibility:I

    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->val$needsMenu:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 5973
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 5974
    .local v2, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 5978
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->val$visibility:I

    const/4 v6, -0x1

    invoke-interface {v2, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(II)V

    .line 5983
    sget-boolean v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALWAYS_SHOW_NAV_BAR:Z

    if-eqz v5, :cond_1

    .line 5984
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->val$needsMenu:Z

    invoke-interface {v2, v4}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6021
    .end local v2           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 5986
    .restart local v2       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    const/4 v3, 0x0

    .line 5989
    .local v3, type:I
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5998
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarVisible:Z

    if-eqz v5, :cond_5

    .line 6000
    const/16 v5, 0x7e1

    if-ne v5, v3, :cond_3

    .line 6001
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 6017
    .end local v2           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    .end local v3           #type:I
    :catch_0
    move-exception v0

    .line 6019
    .local v0, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    .line 5990
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    .restart local v3       #type:I
    :catch_1
    move-exception v1

    .line 5993
    .local v1, ex:Ljava/lang/NullPointerException;
    :try_start_3
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_2

    .line 5994
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSystemUiVisibilityLw, type 0 at mFocusedWindow: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6005
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_3
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->val$visibility:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-interface {v2, v4}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V

    goto :goto_0

    .line 6009
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;->val$needsMenu:Z

    invoke-interface {v2, v4}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
