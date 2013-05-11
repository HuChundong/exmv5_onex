.class Lcom/android/internal/policy/impl/PhoneWindow$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->showNavigationBarTips(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 4165
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 4167
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v0, :cond_0

    .line 4168
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->toggle()V

    .line 4169
    :cond_0
    return-void
.end method
