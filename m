Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED9326BDA8
	for <linux-kernel-announce@vger.kernel.org>; Tue, 11 Feb 2025 08:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739264114; cv=none; b=gkJ7ggy0s1OXJJ0SrTw/9cPkxmFyxQKOZof4SImMdAOfjj0bJ8Cdf2kaJ+1HypA77Ym4I2KJDbC0YleMG01CNCyQKa5uy/USoi0gIvNJe8Y0HmBniy2vRuppA76lhNQV4M+H/ck8UVJS5W8TSsJR4iGjoXanOeg3swjW5R2mT9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739264114; c=relaxed/simple;
	bh=ZASzvLQtPHxUuTQE2gbOC3iVDrmfj1yaXuOj0Iuz/yc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XkGpNqLj2RAu2Foq9cgx3vDW7Xt00NPcTWZx7u1PWH5XOCXpxq/QvzS3gPxUoLIuNxA/15rsViEd0bpHG2UvJIlzvhvi7TlV2J7N3mGkoRZ30VkwoHo+2m9uU9v0EMxu3wS+rCExfFhpPoR54EaRCzo5jwfP67x59MjcwVa/3oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1739264114;
	bh=ZASzvLQtPHxUuTQE2gbOC3iVDrmfj1yaXuOj0Iuz/yc=;
	h=Subject:From:To:Date:From;
	b=qowvtM/w+NxODV6vNmi4gV0pDKu8aX8qt2GFWh9FVfvpa+7G9soa5WTYUuoQPTRRQ
	 FyyQKM0U6V8nNJSbXPJLv6b/hdNefn+k+jXhGw/fOdR8BYVHm1iJPKzhW/o5irsW7U
	 fJxy+wMIpFUrGX1MPBgIk/H4L5XNSOgyOT041o0Q=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7EA8C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Tue, 11 Feb 2025 08:55:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74793380AA7A
	for <linux-kernel-announce@vger.kernel.org>; Tue, 11 Feb 2025 08:55:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.77 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 11 Feb 2025 08:55:42 +0000
Message-Id: <20250211085542.release-6.6.77@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.77
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.77.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.77.xz

Linux kernel version 6.6.77 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.77.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.77.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.77.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.77/v6.6.76

