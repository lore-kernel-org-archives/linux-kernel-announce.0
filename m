Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C331FCCEE
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 Jan 2025 12:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737118519; cv=none; b=eonI8r1sl/J0ipMRu0gG9X++MXFbV7UJ6IP4gyaSwJkE8PT1kyLKZaDdwYLZCQUsr6TS6KyyIQZCPK13yAC4NeEYlQPa23tE3Jem1zBaJXVR/yQROxRv4QzAnQejiNynrnS5wZoZ4JJNaQvfRRjyv3nD6LuDhavXNGqxkc6T7hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737118519; c=relaxed/simple;
	bh=IyfOpb6iVF0uN4XHPeFJW+1bIdz4gePIA0EqWwqYpts=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=g4EnPds0DTV5ZwAe4TxEFS9joFSWLsp0dl8isTk4xbyiHqbCTo0Te/jWJVKm+iAXP05nvwCCaWfL5lc+kV/JskXMA/6RjYRmE9Qgnrw74IimhvDtkiGRrh+I/YBs/gssfqI83OiyZmgZQ0iwTcUZhwGelNosJ7MeYO77ZbJ7ses=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1737118519;
	bh=IyfOpb6iVF0uN4XHPeFJW+1bIdz4gePIA0EqWwqYpts=;
	h=Subject:From:To:Date:From;
	b=bYxpjjuxkzKDJ9J3Rhgl09lW+Fy2X69HrmgQd/6i2DMedpuzi1wURGtNY3za8yVVo
	 fBszcF4T3csPtACT6GPxeyLctMpRG451c5uxov8er0gyvNcSSuj5bTVW/P+FMolqfF
	 oXZM40mr3t6iKXzW93Yc9AUl11rtETYmNX22caMs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67E5CC4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 Jan 2025 12:55:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EB514380AA69
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 Jan 2025 12:55:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.72 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 17 Jan 2025 12:55:42 +0000
Message-Id: <20250117125542.release-6.6.72@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.72
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.72.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.72.xz

Linux kernel version 6.6.72 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.72.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.72.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.72.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.72/v6.6.71

