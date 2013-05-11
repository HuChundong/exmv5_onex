.class public Lcom/htc/dialog/HtcAlertDialog;
.super Landroid/app/Dialog;
.source "HtcAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertDialog$Builder;,
        Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAlertDialog"


# instance fields
.field protected mAlert:Lcom/htc/dialog/HtcAlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 81
    new-instance v0, Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/dialog/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    .line 82
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 87
    new-instance v0, Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/dialog/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    .line 88
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 95
    invoke-virtual {p0, p2}, Lcom/htc/dialog/HtcAlertDialog;->setCancelable(Z)V

    .line 96
    invoke-virtual {p0, p3}, Lcom/htc/dialog/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 97
    new-instance v0, Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/dialog/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    .line 98
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 335
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertController;->installContent()V

    .line 338
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 339
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 340
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 341
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 342
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "AlertDialog"

    const-string v3, "[onCreate] auto launch SIP."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dialog/HtcAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 351
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dialog/HtcAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 120
    return-void
.end method

.method protected onStartNonSIP()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 103
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 125
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 113
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 114
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 239
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "msg"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 225
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 284
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 249
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 298
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 259
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 311
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 312
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 269
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setIcon(I)V

    .line 321
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 326
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .parameter "forceInverseBackground"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setInverseBackgroundForced(Z)V

    .line 330
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    .line 187
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;)V

    .line 195
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 211
    return-void
.end method
