Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2780642A8B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755253826; cv=none; b=VzTPE+DGgL3BmxCEK9EAmsjbkuHCpyvWdwSeTxjD14WAZTsNr5gxGNIF7X1punfMAhanGxYVKQQpGCtvFZX6C/Ewz9+nlll7pFVOg+AHb9azqOrPo4esySQ3RM3hF3qI6xGu2w84OVXm7tYYx2lnD7wIhY3O8INYGkBd5fZa/Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755253826; c=relaxed/simple;
	bh=VbfD8MSE+9mGSZmEPKvRtUoCMVaa6qoGFmpfuh1RNTA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gEVZn8TyHR3SZVCp/MlZo7uoXOstvpLVbYHGkOLSAsqPWQ+vzEhYfhqsMUXHiYHX9ahDq65bS8WxhU4DGIoOMyjpDZBZ8hA/sjcZqqTYs7tHe5tf9HyMLEPeHGz1uH/OE+FdQvILvaIoJDYPynhqwzILNKOv6x/A4VXMMw5o8jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1755253826;
	bh=VbfD8MSE+9mGSZmEPKvRtUoCMVaa6qoGFmpfuh1RNTA=;
	h=Subject:From:To:Date:From;
	b=XPHSer/BiXiqeEw6J14yo2NvPXRFa1EAT0tY2PpI2WWAxxIajw4rwOSj8/3/wwEIt
	 pBlzVHbKnK8bRnQgncELGc+QwVTvvk9eHncP99yqp1bA6qfEv9OU0PzDuHmsc6RLZZ
	 SwSxRtGPzeQGBcXXr6I6P2y52T1+f5VjABENJ4xs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD304C4CEEB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:30:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 03CD339D0C3B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Aug 2025 10:30:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.102 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Aug 2025 10:30:36 +0000
Message-Id: <20250815103036.release-6.6.102@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.102
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.102.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.102.xz

Linux kernel version 6.6.102 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.102.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.102.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.102.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.102/v6.6.101

