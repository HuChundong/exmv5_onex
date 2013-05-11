.class public Lcom/htc/text/style/URISpan;
.super Landroid/text/style/ClickableSpan;
.source "URISpan.java"


# instance fields
.field private mClickable:Z

.field private mUnderlined:Z

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0, v0}, Lcom/htc/text/style/URISpan;-><init>(Ljava/lang/String;ZZ)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "uri"
    .parameter "clickable"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/text/style/URISpan;-><init>(Ljava/lang/String;ZZ)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "uri"
    .parameter "clickable"
    .parameter "underlined"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/htc/text/style/URISpan;->mUri:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, Lcom/htc/text/style/URISpan;->mClickable:Z

    .line 32
    iput-boolean p3, p0, Lcom/htc/text/style/URISpan;->mUnderlined:Z

    .line 33
    return-void
.end method

.method public static performClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .parameter "widget"
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v3, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 63
    const-string v5, "ro.da1.enable"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v7, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 66
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const v5, 0x10040

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 71
    const-string v5, "com.htc.HtcLinkifyDispatcher"

    const-string v6, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, e:Ljava/net/URISyntaxException;
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v2           #e:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v2

    .line 83
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 84
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/text/style/URISpan;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "widget"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/text/style/URISpan;->mClickable:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/htc/text/style/URISpan;->mUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/htc/text/style/URISpan;->performClick(Landroid/view/View;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 40
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 41
    iget-boolean v0, p0, Lcom/htc/text/style/URISpan;->mUnderlined:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 42
    return-void
.end method
