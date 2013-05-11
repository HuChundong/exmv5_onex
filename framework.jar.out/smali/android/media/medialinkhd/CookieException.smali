.class public Landroid/media/medialinkhd/CookieException;
.super Ljava/lang/Exception;
.source "CookieException.java"


# static fields
.field public static final DUPLICATE_COOKIE:Ljava/lang/String; = "Duplicate cookie, There is already another HtcDLNAServiceManager connect to DLNA service with same cookie currently."

.field public static final INVALID_COOKIE:Ljava/lang/String; = "Invalid cookie, please generate new cookie through HtcDLNAServiceManager.generateNewSessionCookie(Context context) to generate new cookie."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
