Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FA715E8B
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Nov 2025 23:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763940883; cv=none; b=azx8GwyY+dUK+2F53sRijJUvX5jqnfLeCoPx7HFFW+bL2pqNOqSobI6uAY+Te7LVoMxhn0TFD1B8VRFNm8beCjZTjrgxhQ0ileLeg/IeFrpzQOijzOld+bupRdzfPpljTLCj2kczbKqT5nX8K6OqeVAmGuAJeEyRtuCZoTu0y2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763940883; c=relaxed/simple;
	bh=1lzbwT3fWJpil+YE3zz7flUWt4Wq/SVht2NMOU3RmZk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mPS0U1ZsnPJnFWHtnC6Ivuc3xyl1hqHV2HT8U2e0YwRnP88frqaTYkVMjvyzUFAhX2CKLVqPDwnynn0J5PEzuZ3n1NcD5C4mlWCQDgkJYjJEDV6eAqKlNc/LF7TpC1B1vEXojj5Jzcmnz/VsiGXkwTINu2Of6CHzoes9ZWkwgcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1763940883;
	bh=1lzbwT3fWJpil+YE3zz7flUWt4Wq/SVht2NMOU3RmZk=;
	h=Subject:From:To:Date:From;
	b=NExTPDApjPSWEyLjJu5AWf6/Az0EE+7YZytBQM/HzzIpGABIrj9+Ub+UKupmr4TaW
	 PQBTbi5eLYm6DECpH8IDDi3+I7x77UsyRgTTznp6IKZJtzBs+ZX6Rt28m//jOVC219
	 90OGnCZgNjONmckTAif0IgPtX3UaDJ8ua4prbbh4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB2E8C113D0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Nov 2025 23:34:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74C4E3A86246
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Nov 2025 23:34:07 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 23 Nov 2025 23:34:06 +0000
Message-Id: <20251123233406.release-6.18-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.18-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.18-rc7/v6.17

Linux kernel version 6.18-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.18-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.18-rc7/v6.17

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.18-rc7/v6.18-rc6

