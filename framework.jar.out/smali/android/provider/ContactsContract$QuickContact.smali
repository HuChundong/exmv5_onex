.class public final Landroid/provider/ContactsContract$QuickContact;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickContact"
.end annotation


# static fields
.field public static final ACTION_QUICK_CONTACT:Ljava/lang/String; = "com.android.contacts.action.QUICK_CONTACT"

.field public static final EXTRA_EXCLUDE_MIMES:Ljava/lang/String; = "exclude_mimes"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_TARGET_RECT:Ljava/lang/String; = "target_rect"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_LARGE:I = 0x3

.field public static final MODE_MEDIUM:I = 0x2

.field public static final MODE_SMALL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7752
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "target"
    .parameter "lookupUri"
    .parameter "mode"
    .parameter "excludeMimes"

    .prologue
    .line 7871
    move-object v0, p0

    .line 7873
    .local v0, actualContext:Landroid/content/Context;
    :goto_0
    instance-of v4, v0, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_0

    instance-of v4, v0, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 7874
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0           #actualContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0       #actualContext:Landroid/content/Context;
    goto :goto_0

    .line 7876
    :cond_0
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_1

    const/high16 v3, 0x8

    .line 7885
    .local v3, intentFlags:I
    :goto_1
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 7887
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7888
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 7889
    const-string/jumbo v4, "mode"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7890
    const-string v4, "exclude_mimes"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 7891
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7897
    .end local v2           #intent:Landroid/content/Intent;
    :goto_2
    return-void

    .line 7876
    .end local v3           #intentFlags:I
    :cond_1
    const v3, 0x10008000

    goto :goto_1

    .line 7893
    .restart local v3       #intentFlags:I
    :catch_0
    move-exception v1

    .line 7894
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ContactsContract.showQuickContact"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "target"
    .parameter "lookupUri"
    .parameter "mode"
    .parameter "excludeMimes"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f00

    .line 7827
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 7828
    .local v0, appScale:F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 7829
    .local v1, pos:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7831
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 7832
    .local v2, rect:Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 7833
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 7834
    aget v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 7835
    aget v3, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 7838
    invoke-static {p0, v2, p2, p3, p4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 7839
    return-void
.end method
