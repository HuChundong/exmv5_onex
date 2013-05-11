.class public Lcom/kddi/android/iida/widget/IidaAlertDialog;
.super Landroid/app/Dialog;
.source "IidaAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/iida/widget/IidaAlertDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IidaAlertDialog"


# instance fields
.field protected mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 71
    new-instance v0, Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {p0}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/kddi/android/iida/widget/IidaAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    .line 72
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 77
    new-instance v0, Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {p0}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/kddi/android/iida/widget/IidaAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    .line 78
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p0}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setCancelable(Z)V

    .line 86
    invoke-virtual {p0, p3}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 87
    new-instance v0, Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {p0}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/kddi/android/iida/widget/IidaAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    .line 88
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0, p1}, Lcom/kddi/android/iida/widget/IidaAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getPadding1()Landroid/view/View;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->getPadding1()Landroid/view/View;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPadding2()Landroid/view/View;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->getPadding2()Landroid/view/View;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPadding3()Landroid/view/View;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0}, Lcom/kddi/android/iida/widget/IidaAlertController;->getPadding3()Landroid/view/View;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 334
    iget-object v2, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v2}, Lcom/kddi/android/iida/widget/IidaAlertController;->installContent()V

    .line 337
    invoke-virtual {p0}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 338
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 339
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 340
    const v2, 0x3f333333

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 341
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 344
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/kddi/android/iida/widget/IidaAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 349
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
    .line 354
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/kddi/android/iida/widget/IidaAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 355
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
    .line 107
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 108
    return-void
.end method

.method protected onStartNonSIP()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 92
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 113
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 101
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 102
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 209
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "msg"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/kddi/android/iida/widget/IidaAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 195
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 250
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 218
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 263
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 227
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 276
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/kddi/android/iida/widget/IidaAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 236
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0, p1}, Lcom/kddi/android/iida/widget/IidaAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0, p1}, Lcom/kddi/android/iida/widget/IidaAlertController;->setIcon(I)V

    .line 285
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0, p1}, Lcom/kddi/android/iida/widget/IidaAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 289
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .parameter "forceInverseBackground"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0, p1}, Lcom/kddi/android/iida/widget/IidaAlertController;->setInverseBackgroundForced(Z)V

    .line 293
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0, p1}, Lcom/kddi/android/iida/widget/IidaAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/kddi/android/iida/widget/IidaAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    .line 158
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0, p1}, Lcom/kddi/android/iida/widget/IidaAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    invoke-virtual {v0, p1}, Lcom/kddi/android/iida/widget/IidaAlertController;->setView(Landroid/view/View;)V

    .line 166
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
    .line 180
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertDialog;->mAlert:Lcom/kddi/android/iida/widget/IidaAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/kddi/android/iida/widget/IidaAlertController;->setView(Landroid/view/View;IIII)V

    .line 181
    return-void
.end method
