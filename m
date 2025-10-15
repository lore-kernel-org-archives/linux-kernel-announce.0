Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C174E2BE7AD
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760524256; cv=none; b=aOpQAdqU97kT8D0subudLoJH05jsQXrHtEJy3Mup+fkeYhnYRnVcXqosX6sPZgfWouY4L9D07KiYA7c9dD+ceEPK7z5HQz05bDjyv+U7+wICCPQeWDFZEnu9pHyf2tw3//lTUF0SGPX2/Kd6bH870BZUHmqUE9wStDmRLZuhwCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760524256; c=relaxed/simple;
	bh=QA7XyyNGDfF525GfOcztJytR2uxq7OwbcVtJno91EZs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=tBSWtkUkAEK9VItbauethzx5m7WfkxWMGyTZtALynDvVSt8mTfWs75bcp3X+yYHAQgaRquluRxYF09pS0Y/Ftsf9C6zl+P4GSi4qhSyYNNrZ6iVRdtBkGU/W28lH2H4SSxwoA60/jb9s5dcr7JTGbi1Qg+C/cdv4rZDxS0iWjDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760524256;
	bh=QA7XyyNGDfF525GfOcztJytR2uxq7OwbcVtJno91EZs=;
	h=Subject:From:To:Date:From;
	b=bGbGc6HT0WC4YZEMRQRUnPCerYYsbrmR7MXjS7kqmmvTrb8UNKcmdrZsksQbtYlRe
	 QGMhTuBAGpeiwpwNSb74bFQ0gd1dTgLAji36nUG59rJrqU/y7HdKwJakDrreeD0cjI
	 BNCA5DDdnnTGjXZfeXBKYcVKIKGywKpwC/2aOHc0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FBAFC4CEF8
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:30:56 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 75DA9380CFDE
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:30:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.53 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 15 Oct 2025 10:30:41 +0000
Message-Id: <20251015103041.release-6.12.53@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.53
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.53.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.53.xz

Linux kernel version 6.12.53 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.53.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.53.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.53.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.53/v6.12.52

