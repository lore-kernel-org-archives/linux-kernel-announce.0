Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A447319874
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755253234; cv=none; b=l+b2HnwAmzu0qYHE6z+qHcECTpTcmyHr9TU78Pc6WDYzpe33E5NP05p8y0FKTr1GkFOd0LU4rZQhfOqt7YpNFzjCKOCP0xhx047GUr06I6zJjpj/7rEI7mk0LLqQD55dh7Y3C3gc8cCrNxYKpI1ZJeQREw3xReEsbeySLjN0myI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755253234; c=relaxed/simple;
	bh=7wP7+R/+M5pdFzDldSpuTjhdo86szfO8i8e22HyMGLg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JSszCQ/mkZ7XrVmo05A4Z5AAlBFz6C1Ux4XrSlni37Hv30jrnJAuIcpG14u3HnLSorzIAlEuCIAONFV7LdmhLu2Z4vLbPX+3mUJ37co4zIIkyxgubIKcFUl0ylb5zyaWCPq1HGhDinrRc2qaNtdex37Unbj9bDaOe4ptPYUVBxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1755253234;
	bh=7wP7+R/+M5pdFzDldSpuTjhdo86szfO8i8e22HyMGLg=;
	h=Subject:From:To:Date:From;
	b=bWJGsb53ORwZm/MTeWOSlMSSe1uiW9VVGpxhu6Wzms3iUt/AHzmzMs1uCXvCmi1j9
	 UdQOVZC22RvRPeWdMM2G+K3sgPZ5amNxIKYxDVYXA998nbxiJPTjjrMdiBTk4La9Je
	 ppqtGuOMttVoU4dMG1u9Kru76uzCZ+dIT+YEKnRs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27B6BC4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:20:34 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7447C39D0C3B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:20:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.148 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Aug 2025 10:20:45 +0000
Message-Id: <20250815102045.release-6.1.148@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.148
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.148.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.148.xz

Linux kernel version 6.1.148 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.148.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.148.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.148.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.148/v6.1.147

