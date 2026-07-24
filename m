Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3935725B0A2
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784901967; cv=none; b=kUM/GtCsin1Ahxnfl6HrdAn8OLcU88g062SROMcOx8PSkoWOUxaKxLs5+gmoHIIFimifsBgBNCr2IUstewI5YnTX1gZioSkGw4pK6y52XllyR0rjabIEKSIhnI8XOI8v/Hlm8MJIzmlVWUPgvJFfhDEioJ8eDE5b3Cle5DjNKPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784901967; c=relaxed/simple;
	bh=AyTqaL7gjyTwUAijFdwRJrSCrnppYtUfqADK1PyVBPE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mVtHcgdCg7AGOgJT3iz788OQ70WhIJqYHybiC6yTg2L/X6FcKCuDlIMJgUek9V5Y7KpVuTeTS+u2qpml0YkCPsi6KL+OrWY3z35vgOux60i7Ed1OOesq2gA+WE1iu7eThZBX0jzfVYAQNeGfZNjJt2cBN3GtVLmn3GI/hRzQ0M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1784901967;
	bh=AyTqaL7gjyTwUAijFdwRJrSCrnppYtUfqADK1PyVBPE=;
	h=Subject:From:To:Date:From;
	b=JEFxymUDqR00nKJzAAOcRskHxrB39Y8fGVomfAHs9nrl5HZNXy5VKnVYdueTSiNGs
	 evLqShIyJeEgzhwW1Ew9cfzMfks6KgZc4algaiNeWqSBoPe6qK0rMa4/JgPrYgzJSW
	 mRtTbhZOi2CaaL7aJ7osN47nOYjQdvhm00POFU+g=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 096261F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:06:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 968AA3926274
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:05:34 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.212 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 24 Jul 2026 14:05:33 +0000
Message-Id: <20260724140533.release-5.15.212@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.212
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.212.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.212.xz

Linux kernel version 5.15.212 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.212.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.212.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.212.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.212/v5.15.211

