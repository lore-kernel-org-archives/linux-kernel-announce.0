Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F71534A78C
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772630720; cv=none; b=sg7xp7N4P/7UmA9IJkPNyfAcJJbhLBndv6zx+LkkJ4j6jpPryaSaorzoCe+dsfsbNuQ5ImnFZT0u4sYJQSwOQP5B74hxIZlxSYSqwJgtYi6O9hx0K3iPyDrlk5PAokjbWio9YQcW/1ZVKHDAvUnqdXD7Wr2HHGdu3hIekqPVnzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772630720; c=relaxed/simple;
	bh=ZzGJTlTnESYN0kgKSrZ/UPy2625q3fni6NFOpQt68N0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RgvGhXQZ+9DSGuUND1Y18wmpyYMmeXRFr9lDAtp1BLO6OyKhFQ90d58FpoPUju6DutJL/OQy1hrY778mJ2T0M33CHbXS4OcQzP3LzFAvDF31KFAYGD7Be0fjJtBCS+Z0X8PvRg/Ro4CHyFF/0kMiVLfSZs7xFh218MB5Ir9N8PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1772630720;
	bh=ZzGJTlTnESYN0kgKSrZ/UPy2625q3fni6NFOpQt68N0=;
	h=Subject:From:To:Date:From;
	b=XUMznrDcxg+jgRbWyZvbzGNjyvVkC1rOolIdWpZd0sjoy/56hRzoeuGz9/PQwxwJE
	 b3QZcRD4wMexn19QnrC6mW0UkZvLkzPnN3XSEZScWn5j83kenZQvJ1mBwrQe0THMpv
	 pHXonRTr82YI7IHIMs8KyaAwvj/ccQLzbCJzBjC4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A7BEC19423
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:25:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0594B3808200
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Mar 2026 13:25:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.16 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Mar 2026 13:25:20 +0000
Message-Id: <20260304132520.release-6.18.16@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.16
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.16.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.16.xz

Linux kernel version 6.18.16 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.16.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.16.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.16.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.16/v6.18.15

