.class public interface abstract Lcom/htc/text/tag/ITag;
.super Ljava/lang/Object;
.source "ITag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/text/tag/ITag$Format;
    }
.end annotation


# static fields
.field public static final BLANK_STRING:Ljava/lang/String; = " "

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final FORMAT_SEPARATER:Ljava/lang/String; = "\ufffb"

.field public static final IMAGE_PLACE_HOLDER:Ljava/lang/String; = " "

.field public static final NEW_LINE:Ljava/lang/String; = "\n"

.field public static final NOVALUE_PLACE_HOLDER:Ljava/lang/String; = "@"


# virtual methods
.method public abstract getContentLength()I
.end method

.method public abstract getEndPosition()I
.end method

.method public abstract getStartPosition()I
.end method

.method public abstract setEndPosition(I)V
.end method

.method public abstract setStartPosition(I)V
.end method

.method public abstract toDecoration()Ljava/lang/String;
.end method

.method public abstract toEncodedString()Ljava/lang/String;
.end method

.method public abstract toRawContent()Ljava/lang/String;
.end method

.method public abstract toTrimmedString()Ljava/lang/String;
.end method
