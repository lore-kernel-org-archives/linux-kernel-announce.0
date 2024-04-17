Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB16622089
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:50:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713347443; cv=none; b=EuVcc/yh75famp2kgit4f9cRuPcbcowf6KpcYHoTiRVkLFHQF3RLvCSiebuZz7NI8dJ/5DQYRh1cLNeWhh7QhJBwcd/2vNXCUdI8nv8LtA/sTgEAIVoo5Wue0RGtaIPJI3ArgyUXyeD0tIAT+phyqiUlnx8GFI7PkvhqRZtRU5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713347443; c=relaxed/simple;
	bh=Js/RKq7qD7y+YUdQa/jtCLnO2y3nHKr8JXL7JEjLl5o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=WucOnoK7bln2XoaaZDuPFKOtMMExhHj1ccSGowJ1buSTImL0fwdJZdOGnyhUDvMsWqj8xBQY2sab6zf3/2+/OeH1uEDvhC8jiYwXKLui7o0hR4XTzTjEmaSsLzYzkJS2zJxAydtt3BibSFW2yETEk9KMIeUoeAsOoJTjELxPKZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713347443;
	bh=Js/RKq7qD7y+YUdQa/jtCLnO2y3nHKr8JXL7JEjLl5o=;
	h=Subject:From:To:Date:From;
	b=YYq+v0mYHH70QngxLFL0bv427Ckq9X+fbhNzTQg7tBtgyEgLDZmJgDRmh5sucdv3v
	 BvEfbJXzPE1xCILIly822aZ+AG79Dc83Pg2byGxDMLqQBlxaaYVdJUq+SmiTTj7fif
	 Rt0TvMJIYWCJ2jRci14k0YPUFdref7j9vhtr8Mmo=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC6FC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:50:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 90519C43140
	for <linux-kernel-announce@vger.kernel.org>; Wed, 17 Apr 2024 09:50:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 17 Apr 2024 09:50:43 +0000
Message-Id: <20240417095043.release-6.8.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.7.xz

Linux kernel version 6.8.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.8.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.8.7/v6.8.6

