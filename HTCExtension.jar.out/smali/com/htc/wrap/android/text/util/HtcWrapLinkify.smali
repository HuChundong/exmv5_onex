.class public Lcom/htc/wrap/android/text/util/HtcWrapLinkify;
.super Landroid/text/util/Linkify;
.source "HtcWrapLinkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/text/util/Linkify;-><init>()V

    .line 15
    return-void
.end method

.method public static final addLinksWrapped(Landroid/text/Spannable;ILjava/lang/Class;Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;)Z
    .locals 1
    .parameter "text"
    .parameter "mask"
    .parameter
    .parameter "wrappedMatchers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, customURLSpanClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p3, :cond_0

    .line 103
    iget-object v0, p3, Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;->customMatchers:Ljava/util/HashMap;

    invoke-static {p0, p1, p2, v0}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/text/Spannable;ILjava/lang/Class;Ljava/util/HashMap;)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/text/Spannable;ILjava/lang/Class;Ljava/util/HashMap;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final addLinksWrapped(Landroid/text/Spannable;ILjava/lang/Class;Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;I)Z
    .locals 1
    .parameter "text"
    .parameter "mask"
    .parameter
    .parameter "wrappedMatchers"
    .parameter "extraFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, customURLSpanClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p3, :cond_0

    .line 127
    iget-object v0, p3, Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;->customMatchers:Ljava/util/HashMap;

    invoke-static {p0, p1, p2, v0, p4}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/text/Spannable;ILjava/lang/Class;Ljava/util/HashMap;I)Z

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p4}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/text/Spannable;ILjava/lang/Class;Ljava/util/HashMap;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static final addLinksWrapped(Landroid/widget/TextView;ILjava/lang/Class;Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;)Z
    .locals 1
    .parameter "text"
    .parameter "mask"
    .parameter
    .parameter "wrappedMatchers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, customURLSpanClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p3, :cond_0

    .line 57
    iget-object v0, p3, Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;->customMatchers:Ljava/util/HashMap;

    invoke-static {p0, p1, p2, v0}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/widget/TextView;ILjava/lang/Class;Ljava/util/HashMap;)Z

    move-result v0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/widget/TextView;ILjava/lang/Class;Ljava/util/HashMap;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final addLinksWrapped(Landroid/widget/TextView;ILjava/lang/Class;Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;I)Z
    .locals 1
    .parameter "text"
    .parameter "mask"
    .parameter
    .parameter "wrappedMatchers"
    .parameter "extraFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, customURLSpanClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p3, :cond_0

    .line 81
    iget-object v0, p3, Lcom/htc/wrap/android/text/util/HtcWrapLinkify$HtcWrapCustomMatcher;->customMatchers:Ljava/util/HashMap;

    invoke-static {p0, p1, p2, v0, p4}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/widget/TextView;ILjava/lang/Class;Ljava/util/HashMap;I)Z

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p4}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/widget/TextView;ILjava/lang/Class;Ljava/util/HashMap;I)Z

    move-result v0

    goto :goto_0
.end method
