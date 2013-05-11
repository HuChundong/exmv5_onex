.class public final Lcom/htc/provider/HtcContactsContract$QuickContact;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickContact"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3335
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showQuickContactForAddEmail(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "target"
    .parameter "email"

    .prologue
    .line 3463
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3464
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1420

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3469
    const-string v2, "target_rect"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3470
    const-string v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3471
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3477
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 3473
    :catch_0
    move-exception v0

    .line 3475
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcContactsContact"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static showQuickContactForAddEmail(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "target"
    .parameter "email"

    .prologue
    .line 3430
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 3431
    .local v0, location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3433
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3434
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 3435
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 3436
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 3437
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 3440
    invoke-static {p0, v1, p2}, Lcom/htc/provider/HtcContactsContract$QuickContact;->showQuickContactForAddEmail(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 3441
    return-void
.end method

.method public static showQuickContactForAddNumber(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "target"
    .parameter "number"

    .prologue
    .line 3392
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3393
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1420

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3398
    const-string v2, "target_rect"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3399
    const-string v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3400
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3406
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 3402
    :catch_0
    move-exception v0

    .line 3404
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcContactsContact"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static showQuickContactForAddNumber(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "target"
    .parameter "number"

    .prologue
    .line 3359
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 3360
    .local v0, location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3362
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3363
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 3364
    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 3365
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 3366
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 3369
    invoke-static {p0, v1, p2}, Lcom/htc/provider/HtcContactsContract$QuickContact;->showQuickContactForAddNumber(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 3370
    return-void
.end method
