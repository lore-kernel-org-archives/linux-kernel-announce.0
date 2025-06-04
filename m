Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0AC28F935
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749042905; cv=none; b=qwFABUpyPJBlYm+7KI/1qC4LNhAOkK+RVg+XYMSwN4aorCjtsVvlg5y2p6ySiZXzEE5u9ZuPmCNXCbACOanY4XN9jtt/4wzQE6j6f130P/UjioYjt9EY0QUypmVR9nlqOnXl2ToDJ3cyousQjnI443q6EH+xTChCcl4FU5+JDio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749042905; c=relaxed/simple;
	bh=xzXkVMzmZEtIzA+5WAq9koi1puOusY1MTZ6IN9QC1yI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UwXdzVwXfGAEyiCrE9E+GVRGNb6v0n3jsBhlZPH8fw8sruvTPOt7p/8hJ24q2yBRdB9Mfgl0EAEbFTqJANXSlE0UKSRojk/7ysuQ4EdHaHlq9/EjzVKUiE9UR2Iv9Yu12EqS0jMpOxJeb7pDEfvlP8PZYDWZ2jrrZYNB1sd3r20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749042905;
	bh=xzXkVMzmZEtIzA+5WAq9koi1puOusY1MTZ6IN9QC1yI=;
	h=Subject:From:To:Date:From;
	b=JCQWUwUbHjb7S2lOt8bDXF3lfzVl5HJ5V75aDVileUPrXUMhYW2U91kBqPd4HWDkf
	 74LkNWtQkAZ8CkW9xxgDYCMIKptqNlQ9qUG48HRgAGL9PJlnlZgVQIjzldDo1cHxS6
	 0e1Y6PEfoOqlzwu2mDYCZQcClGzXHZLkq/TsZYNg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97BCAC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:15:04 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEB7339D60B4
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Jun 2025 13:15:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.93 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Jun 2025 13:15:36 +0000
Message-Id: <20250604131536.release-6.6.93@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.93
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.93.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.93.xz

Linux kernel version 6.6.93 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.93.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.93.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.93.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.93/v6.6.92

