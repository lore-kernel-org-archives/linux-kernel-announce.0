Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEF829B8F8
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761745262; cv=none; b=uPAy5gIqSeo01OYH9CX8XjfMKbuX0jYZRESHBuqsapgo/BQ84kfKUER5o6hlNnP2jJcxhYejg88KwqL96+y/vLgEP5a4WJueJ5tu+EeJMESL+KNZH1/qBtpTsEOfd43gRpt3YCJVY9FhwJB15aIX8ArC1yBXy42wpDixrmFnRI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761745262; c=relaxed/simple;
	bh=ep9xjTzsovU9P/qGHAg978WBykMHLc6TwEoaXgNHdGI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qEwWebwS7IgXE7WJrdWFzWy02wBR0gehpATH+vKBYDm+hQ8ptFBkQu3Jy1lwM9L4QMSDsRDzc/vk/EQgjK2Nr1W3lzR87l7rdsGJ4xhPHZPfpiBkBWRIQd+U1q++nhet706SyzCbjht8xt5M3yTsJ01qBc0seGy1K7jiu36x8+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1761745262;
	bh=ep9xjTzsovU9P/qGHAg978WBykMHLc6TwEoaXgNHdGI=;
	h=Subject:From:To:Date:From;
	b=EklLYB3uPa1xHjxZbSpfR7jqkXymIANe+ybSPQJSi95CUK1qHaTWs0Qf63hO9Q2BE
	 PZdP/ojQFmsdT1fYMhC12l849LUB9kRMwOVEGjM7LQhioH5ozOUk8fPA/Poahyb2Yy
	 6W/jKCBtSh1B8hJGLFx2+J8XwbSMLNVMLypjvDX8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8672C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:41:00 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 374A03A4100D
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:40:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.56 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 29 Oct 2025 13:40:37 +0000
Message-Id: <20251029134037.release-6.12.56@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.56
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.56.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.56.xz

Linux kernel version 6.12.56 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.56.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.56.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.56.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.56/v6.12.55

