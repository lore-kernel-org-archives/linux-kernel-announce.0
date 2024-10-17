Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B461DE2CB
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729172745; cv=none; b=B3E4jVYYEQw6X0Sogqr2SkwGDK/ZynnKqHtbHcxpQO1HSzqzJ2KnrB6lE17sbQyeCdu1RY4uQaz2wN9gFAOgSZg6WYtD9zZDiE+YwxkGBB5Tsx8qwC7ExGMARTovnDSZ4SE7fqCS04aV+V9yF4e+aZXKCzgvNpoR2D7coLx/SpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729172745; c=relaxed/simple;
	bh=eIJpP08VPMF/pMWCO6lE7T3vq86Eqfm/Q4esUdlTwT8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VZp+fwXc62FgL1r7f/awbN4cAvYCdi1z8geBUI6NEjVOY/uJH+C3v6agio2SOg2zGU3INZ8PYm77s/Dnt9dzv4XljljYUkbeUVY4AM0I79ZZuiGaIx6kl8s3Rbt1f/Fze+9VOwwZxR6KnN64IubppGNAiev2kOx7zDiWBXBE1gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1729172745;
	bh=eIJpP08VPMF/pMWCO6lE7T3vq86Eqfm/Q4esUdlTwT8=;
	h=Subject:From:To:Date:From;
	b=QRmJziuTWogQpFZdKkNOG0habqL3p4ay/8tuO+229wUpCRsMDyqA7YfcG6wFyXZXZ
	 +s6qoNN8wng8lSG+sdA+WTYQXqwTwQS0+RH68sBNltJF9cMpYOZmM8Q2zrB3xU/rK6
	 ckLwq4ADlp+e61eJ3fuTuYa4sH0G4EiEYSfKlfBo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43ED4C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:45:45 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EAE653809A8A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 17 Oct 2024 13:45:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.57 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 17 Oct 2024 13:45:50 +0000
Message-Id: <20241017134550.release-6.6.57@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.57
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.57.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.57.xz

Linux kernel version 6.6.57 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.57.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.57.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.57.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.57/v6.6.56

