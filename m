Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9835D7EC
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 22:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706223343; cv=none; b=XhUqXz+FTP/Oh2iZn1SyW6o0FuYWXUAyt7I2WHc/5XSz7lDgZ3EPMoX+1VKzv+cCShYwToNtnbYe0aSYt4u1R0k26msEC0erx+PdquKvR3mU96VCuUufrgMrKScZ7MByglOZdYEwu4qJclR6cLJW+BmSlTMsKsSY0Sism6BJcZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706223343; c=relaxed/simple;
	bh=EVizVRI4gL7+kQNX1MCfD1WViFJiI1WE5o0UxdIpWPY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=M/GAQb03DKMYC25fy2eUgPMQq28aESGNIv9IcQOI8CmLqAq8Bu7nfxMUMaeuJPDPCzCSZlJE/wJHJsWjPaGqv741ksrOjq6d03Ua2P4Mpk4AbQGVTJ8BRwOyjUeCYZhTHVcXCMzSfZd4EVtfEXWc3iVLf7KyIRf50ce8OoxdUFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1706223343;
	bh=EVizVRI4gL7+kQNX1MCfD1WViFJiI1WE5o0UxdIpWPY=;
	h=Subject:From:To:Date:From;
	b=UCWm8rcyI2PpPH5O/QK9npht7kjCC+6SHWaZM2kiQ/yaTf9He5M7VMu3usB+DkdpF
	 n5K7IBYwj72cxYzMeci2D567g3u2yMDMx5ndSNHGu9Wn1QHqS0xWiJawk6WwurP7l+
	 hfA03pcr6v9bkqJUuC4TStFxM0HukzPFSlpc3e6I=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2630EC433F1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 22:55:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 11EFEDFF765
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jan 2024 22:55:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.268 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Jan 2024 22:55:43 +0000
Message-Id: <20240125225543.release-5.4.268@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.268
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.268.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.268.xz

Linux kernel version 5.4.268 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.268.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.268.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.268.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.268/v5.4.267

