Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD8028CF44
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Jun 2025 11:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749555306; cv=none; b=fogLULUV7+Sujm/HgeIVQEb5YSFV8IysoMKKqjLHsaKdVsgWaHLiDL0n2EvXqqjo5q+KsuV0lpl5g9oRjDzXae9frsJZJKfy+D8St0GrxpDhn09CdZTFAxSXMAuPYlgnvtZBdsGE3wTCtU4JMLrIBPSevbUID7pzvGnQakLlbkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749555306; c=relaxed/simple;
	bh=vX50bJDAtUXx4e0fQxll+lpY3uVcUnxGY2PAVwdRcdA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=OtjhxI91SJGqHIYzWieabPdBYIdsdHaQujf6p9OBxlEpGxr7Cv4w0QASpD2npT8RCQcsffNK/OtztsGt0tcSfUzic9AT68rw6l1OT86+EZB3dvlBIc+mm07DdeMONamFeBjUYnWHg5RI+CuRcjnN6izOB9PDfk/o4LyCg3sy8G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749555306;
	bh=vX50bJDAtUXx4e0fQxll+lpY3uVcUnxGY2PAVwdRcdA=;
	h=Subject:From:To:Date:From;
	b=iGHC6arTJk3L647naKRFTzVM+r8GAtxkAWV5ne8hyvNoVdnA7MYwpYkN6nQDh8OfD
	 hwGLu/kKmgKzM9sbtlB7CUW7G6BHKqbuSwKsm+w+M8WzRbk7uvdhQTBTPNQwwbLvt6
	 AsARrBfNEJIjO97YMgDyyKvz76OgyUW8quVyp91Q=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54363C4CEED
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Jun 2025 11:35:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE41638111D2
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Jun 2025 11:35:37 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.33 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 10 Jun 2025 11:35:36 +0000
Message-Id: <20250610113536.release-6.12.33@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.33
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.33.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.33.xz

Linux kernel version 6.12.33 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.33.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.33.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.33.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.33/v6.12.32

